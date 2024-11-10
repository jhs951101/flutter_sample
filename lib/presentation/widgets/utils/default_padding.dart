import 'package:flutter/material.dart';

class DefaultPadding extends StatelessWidget {
  const DefaultPadding({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 10,
      ),
      child: child,
    );
  }
}
