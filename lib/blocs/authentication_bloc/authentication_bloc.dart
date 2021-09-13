import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:english_app/models/userApp.dart';
import 'package:english_app/services/get_it.dart';
import 'package:english_app/services/repositories/authentication_repository.dart';
import 'package:english_app/shared/constants.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<UserApp?> _userSubscription;

  AuthenticationBloc()
      : _authenticationRepository = getIt.get<AuthenticationRepository>(),
        super(Uninitialized()) {
    _userSubscription = _authenticationRepository.user.listen(
      (UserApp? user) => add(AuthenticationUserChanged(user)),
    );
  }

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is AuthenticationUserChanged) {
      yield _mapAuthenticationUserChangedToState(event);
    }
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    }
    if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {
      final isSignedIn = await _authenticationRepository.isSignedIn();
      if (isSignedIn) {
        final user = await _authenticationRepository.getUser();
        // Activate when need to see the splash screen
        yield await Future.delayed(
          splashScreenDuration,
          () => Authenticated(user),
        );
        // Activate when not need to see splash screen
        //yield Authenticated(user);
      } else {
        // Activate when need to see the splash screen
        yield await Future.delayed(
          splashScreenDuration,
          () => Unauthenticated(),
        );
        // Activate when not need to see splash screen
        yield Unauthenticated();
      }
    } catch (_) {
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    _authenticationRepository.logOut();
  }

  AuthenticationState _mapAuthenticationUserChangedToState(AuthenticationUserChanged event) {
    if (event.user != null) {
      return Authenticated(event.user!);
    } else {
      return Unauthenticated();
    }
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
