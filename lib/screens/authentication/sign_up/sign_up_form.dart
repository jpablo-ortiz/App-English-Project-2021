import 'package:english_app/blocs/signup_bloc/signup_bloc.dart';
import 'package:english_app/generated/l10n.dart';
import 'package:english_app/screens/authentication/sign_up/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late SignupBloc _signupBloc;

  bool get isPopulated => _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isSignUpButtonEnabled(SignupState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _signupBloc = BlocProvider.of<SignupBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        // if state is submitting
        if (state.isSubmitting) {
          Get.snackbar(
            S.of(context).registering + '...',
            '',
            icon: Icon(Icons.info),
            backgroundColor: Get.theme.colorScheme.secondaryVariant,
          );
        }
        // if state is failure
        if (state.isFailure) {
          Get.snackbar(
            S.of(context).register_failure,
            '',
            icon: Icon(
              Icons.error,
              color: Get.theme.backgroundColor,
            ),
            backgroundColor: Colors.red,
            colorText: Get.theme.backgroundColor,
          );
        }
        // if state is success
        if (state.isSuccess) {
          //BlocProvider.of<AuthenticationBloc>(context).add(LoggedIn());
          Get.back();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: S.of(context).email,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autocorrect: false,
                  validator: (_) {
                    return !state.isEmailValid ? S.of(context).invalid_email : null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: S.of(context).password,
                  ),
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autocorrect: false,
                  validator: (_) {
                    return !state.isPasswordValid ? S.of(context).invalid_password : null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // 1. SignUpButton
                      SignUpButton(
                        onPressed: isSignUpButtonEnabled(state) ? _onFormSubmitted : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _onEmailChanged() {
    _signupBloc.add(
      EmailChanged(email: _emailController.text),
    );
  }

  _onPasswordChanged() {
    _signupBloc.add(
      PasswordChanged(password: _passwordController.text),
    );
  }

  _onFormSubmitted() {
    _signupBloc.add(
      Submitted(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }
}
