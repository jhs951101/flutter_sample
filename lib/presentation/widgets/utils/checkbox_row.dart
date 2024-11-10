import 'package:flutter/material.dart';

import '../../../config/constants/constants.dart';

class CheckboxRow extends StatelessWidget {
  const CheckboxRow({
    required this.title,
    required this.value,
    super.key,
    this.onChanged,
  });

  final String title;
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        AppText.caption(title),
      ],
    );
  }
}
