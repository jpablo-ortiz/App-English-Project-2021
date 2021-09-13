import 'package:english_app/blocs/login_bloc/login_bloc.dart';
import 'package:english_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.snackbar(
          S.of(context).login_in,
          S.of(context).login_in_with_google,
          icon: Icon(Icons.info),
          backgroundColor: Get.theme.colorScheme.secondaryVariant,
        );
        BlocProvider.of<LoginBloc>(context).add(
          LoginWithGooglePressed(),
        );
      },
      child: Text(S.of(context).login_with_google),
    );
  }
}
