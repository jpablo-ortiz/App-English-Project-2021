// When an error occurs when registering
import 'package:english_app/models/userApp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//----------------------------------------------------------
//----------------------- EXCEPTIONS -----------------------
//----------------------------------------------------------

class SignUpFailure implements Exception {}

// when an error occurs when logging in
class LogInWithEmailAndPasswordFailure implements Exception {}

// when an error occurs when logging in with google
class LogInWithGoogleFailure implements Exception {}

// when an error occurs when loggout
class LogOutFailure implements Exception {}

//----------------------------------------------------------
//----------------------- REPOSITORY -----------------------
//----------------------------------------------------------

abstract class AuthenticationRepository {
  //----------------------------------------------------------
  //------------------------- STREAMS ------------------------
  //----------------------------------------------------------

  // Stream user -> actual user when the state of autehntication changes
  Stream<UserApp?> get user;

  //----------------------------------------------------------
  //----------------- FUNCIONES PRINCIPALES ------------------
  //----------------------------------------------------------

  // Register user with email and password
  Future<void> signUp(String email, String password);

  // Login with google
  Future<void> loginWithGoogle();

  // Login with email and password
  Future<void> loginWithEmailAndPassword(String email, String password);

  // Logout
  Future<void> logOut();

  Future<bool> isSignedIn();

  Future<UserApp> getUser();
}

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  //----------------------------------------------------------
  //--------------- VARIABLES Y CONSTRUCTOR ------------------
  //----------------------------------------------------------

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthenticationRepositoryImpl({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  //----------------------------------------------------------
  //------------------------- STREAMS ------------------------
  //----------------------------------------------------------

  // Stream user -> actual user when the state of autehntication changes
  Stream<UserApp?> get user {
    return _firebaseAuth.authStateChanges().map((User? firebaseUser) {
      if (firebaseUser == null) {
        return null;
      } else {
        return UserApp.fromFirebaseUser(firebaseUser);
      }
    });
  }

  //----------------------------------------------------------
  //----------------- FUNCIONES PRINCIPALES ------------------
  //----------------------------------------------------------

  // Obtener usuario
  Future<UserApp> getUser() async {
    return UserApp.fromFirebaseUser(_firebaseAuth.currentUser);
  }

  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  // Register user with email and password
  Future<void> signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception {
      throw SignUpFailure();
    }
  }

  // Login with google
  Future<void> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw LogInWithGoogleFailure();
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
    } on Exception {
      throw LogInWithGoogleFailure();
    }
  }

  // Login with email and password
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception {
      throw LogInWithEmailAndPasswordFailure();
    }
  }

  // Logout
  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } on Exception {
      throw LogOutFailure();
    }
  }

  //----------------------------------------------------------
  //------------------ FUNCIONES AUXILIARES ------------------
  //----------------------------------------------------------

}
