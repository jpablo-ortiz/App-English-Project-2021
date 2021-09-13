import 'package:english_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(S.of(context).create_account),
      onPressed: () {
        Get.toNamed('/sign_up');
      },
    );
  }
}
