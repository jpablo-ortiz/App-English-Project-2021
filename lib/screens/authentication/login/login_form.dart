import 'package:english_app/blocs/login_bloc/login_bloc.dart';
import 'package:english_app/generated/l10n.dart';
import 'package:english_app/screens/authentication/login/widgets/create_account_button.dart';
import 'package:english_app/screens/authentication/login/widgets/google_login_button.dart';
import 'package:english_app/screens/authentication/login/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //
  late final LoginBloc _loginBloc;

  bool get isPopulated => _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        // three cases:
        if (state.isSubmitting) {
          Get.snackbar(
            S.of(context).login_in + '...',
            '',
            icon: Icon(Icons.info),
            backgroundColor: Get.theme.colorScheme.secondaryVariant,
          );
        }
        if (state.isFailure) {
          Get.snackbar(
            S.of(context).login_failure,
            '',
            icon: Icon(
              Icons.error,
              color: Get.theme.backgroundColor,
            ),
            backgroundColor: Colors.red,
            colorText: Get.theme.backgroundColor,
          );
        }
        if (state.isSuccess) {
          //BlocProvider.of<AuthenticationBloc>(context).add(LoggedIn());
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: SvgPicture.asset(
                    'assets/javeriana.svg',
                    width: Get.width * 0.85,
                    color: Get.theme.primaryColor,
                  ),
                ),
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
                      // Three buttons:
                      // 1. LoginButton
                      LoginButton(
                        onPressed: isLoginButtonEnabled(state) ? _onFormSubmitted : null,
                      ),
                      // 2. GoogleLoginButton
                      GoogleLoginButton(),
                      // 3. CreateAccountButton
                      CreateAccountButton(),
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

  void _onEmailChanged() {
    _loginBloc.add(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _loginBloc.add(
      PasswordChanged(password: _passwordController.text),
    );
  }

  void _onFormSubmitted() async {
    _loginBloc.add(
      LoginWithCredentialsPressed(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
    await Future.delayed(Duration(seconds: 10));
  }
}
