import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../config/constants/constants.dart';

class StepLinearIndicator extends StatelessWidget {
  const StepLinearIndicator({
    required this.step,
    required this.maxStep,
    super.key,
  });

  factory StepLinearIndicator.step1of2() {
    return const StepLinearIndicator(step: 1, maxStep: 2);
  }

  factory StepLinearIndicator.step2of2() {
    return const StepLinearIndicator(step: 2, maxStep: 2);
  }

  factory StepLinearIndicator.step1of3() {
    return const StepLinearIndicator(step: 1, maxStep: 3);
  }

  factory StepLinearIndicator.step2of3() {
    return const StepLinearIndicator(step: 2, maxStep: 3);
  }

  factory StepLinearIndicator.step3of3() {
    return const StepLinearIndicator(step: 3, maxStep: 3);
  }

  final int step;
  final int maxStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: step,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: AppText.body('STEP$step'),
              ),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: 1,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColor().primary,
                ),
              ),
            ],
          ),
        ),
        const Gap(6),
        if (maxStep > step)
          Expanded(
            flex: maxStep - step,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 0,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColor().primary,
              ),
            ),
          ),
      ],
    );
  }
}
