import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hint,
    this.label,
    this.validate,
    this.isPassword = false,
    this.icon,
    this.suffixIconOnPressed,
  });
  final TextEditingController controller;
  final String? hint;
  final String? label;
  final String? Function(String?)? validate;
  final bool isPassword;
  final IconData? icon;
  final VoidCallback? suffixIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: const TextStyle(
            color: Color(0xff1F1F39),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          cursorColor: AppColors.primary,
          keyboardType: TextInputType.phone,
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff858597)),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff858597)),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xff858597)),
            // labelText: label,
            suffixIcon: IconButton(
              onPressed: suffixIconOnPressed,
              icon: Icon(
                icon,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
