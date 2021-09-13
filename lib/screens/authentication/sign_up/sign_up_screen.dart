import 'package:english_app/blocs/signup_bloc/signup_bloc.dart';
import 'package:english_app/screens/authentication/sign_up/sign_up_form.dart';
import 'package:english_app/screens/global/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar,
      body: Center(
        child: BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(),
          child: SignUpForm(),
        ),
      ),
    );
  }
}
