import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../config/constants/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    this.border = const UnderlineInputBorder(),
    this.controller,
    this.hintText,
    super.key,
    this.label,
    this.obscure,
    this.formKey,
    this.keyboardType,
    this.enabled,
    this.fillColor,
    this.readOnly,
    this.onTap,
    this.suffixIcon,
  });

  factory CustomTextFiled.email({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      hintText: '이메일을 입력해주세요',
      label: '이메일',
      controller: controller,
    );
  }

  factory CustomTextFiled.idAtSignIn({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      hintText: '아이디을 입력해주세요',
      controller: controller,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      fillColor: AppColor().white,
    );
  }

  factory CustomTextFiled.id({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      hintText: '아이디을 입력해주세요',
      label: '아이디',
      controller: controller,
    );
  }

  factory CustomTextFiled.passwordAtSignIn({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      hintText: '비밀번호를 입력해주세요',
      obscure: true,
      controller: controller,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      fillColor: AppColor().white,
    );
  }

  factory CustomTextFiled.password({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      label: '비밀번호',
      hintText: '비밀번호를 입력해주세요',
      obscure: true,
      controller: controller,
    );
  }

  factory CustomTextFiled.passwordConfirm({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      label: '비밀번호 확인',
      hintText: '비밀번호를 다시 입력해주세요',
      obscure: true,
      controller: controller,
    );
  }

  factory CustomTextFiled.name({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      label: '이름',
      hintText: '이름을 입력해주세요',
      controller: controller,
    );
  }

  factory CustomTextFiled.phoneNumber({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      label: '휴대폰 번호',
      hintText: '휴대폰 번호를 -없이 숫자만 입력해주세요',
      controller: controller,
      keyboardType: TextInputType.number,
    );
  }

  factory CustomTextFiled.textVerifyNumber({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      label: '인증번호 입력',
      hintText: '문자로 받으신 인증번호를 입력해주세요',
      controller: controller,
      keyboardType: TextInputType.number,
    );
  }

  factory CustomTextFiled.minimumIpchalUnit({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      hintText: '최소 입찰 단위',
      controller: controller,
      fillColor: AppColor().white,
      keyboardType: TextInputType.number,
    );
  }

  factory CustomTextFiled.ipchalPrice({
    required TextEditingController controller,
  }) {
    return CustomTextFiled(
      hintText: '입찰 금액',
      controller: controller,
      fillColor: AppColor().white,
      keyboardType: TextInputType.number,
    );
  }

  final String? hintText;
  final String? label;
  final bool? obscure;
  final bool? enabled;
  final TextEditingController? controller;
  final GlobalKey<FormState>? formKey;
  final InputBorder border;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final bool? readOnly;
  final VoidCallback? onTap;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Column(
            children: [
              AppText.body(formKey != null ? label! : '${label!}(필수)'),
              const Gap(4),
            ],
          ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            readOnly: readOnly ?? false,
            onTap: onTap,
            enabled: enabled,
            key: formKey,
            controller: controller,
            obscureText: obscure ?? false,
            keyboardType: keyboardType,
            style: AppTextStyle.body(),
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              suffixIcon: suffixIcon,
              border: border,
              fillColor: fillColor ?? AppColor().filledArea,
              filled: true,
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
