import 'package:english_app/blocs/login_bloc/login_bloc.dart';
import 'package:english_app/screens/authentication/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(),
        child: LoginForm(),
      ),
    );
  }
}
