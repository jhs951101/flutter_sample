import 'package:flutter/material.dart';

import '../../../config/constants/constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: AppText.body(text),
    );
  }
}
