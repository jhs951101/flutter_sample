import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({required this.child, super.key, this.onTap});

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
