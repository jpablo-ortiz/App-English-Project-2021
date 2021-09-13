import 'package:english_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback? onPressed;

  SignUpButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(S.of(context).sign_up),
    );
  }
}
