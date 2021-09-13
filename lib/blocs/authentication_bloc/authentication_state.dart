part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

// Three states:

// 1. Uninitialized - (No inicializado) -> splash screen
class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'Uninitialized';
}

// 2. Authenticated - (Autenticado) -> home screen
class Authenticated extends AuthenticationState {
  final UserApp user;

  Authenticated(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'Authenticated { User: ${user.email} }';
}

// 3. Unauthenticated - (No autenticado) -> login screen
class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'Unauthenticated';
}
