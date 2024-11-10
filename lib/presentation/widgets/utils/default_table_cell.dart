import 'package:flutter/material.dart';

import '../../../config/constants/constants.dart';

class DefaultTableCell extends StatelessWidget {
  const DefaultTableCell({
    required this.child,
    super.key,
  });

  factory DefaultTableCell.text(
    String text,
  ) {
    return DefaultTableCell(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: AppText.body(
            text,
          ),
        ),
      ),
    );
  }

  factory DefaultTableCell.manageMeeting() {
    return DefaultTableCell(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.restore_from_trash_outlined),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  factory DefaultTableCell.withRouting(
    String text, {
    required VoidCallback onTap,
  }) {
    return DefaultTableCell(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body(
                  text,
                ),
                const Expanded(
                  child: Icon(
                    Icons.arrow_right_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
