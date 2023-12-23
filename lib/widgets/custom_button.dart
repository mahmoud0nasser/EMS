import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 48.0,
    this.width = double.infinity,
    required this.onPressed,
    this.background,
    required this.text,
  });
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final Color? background;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!,
      height: height!,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          // 'English',
          // style: Theme.of(context).textTheme.displayLarge,
        ),
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xff3D5CFF),
                // background ?? AppColors.primary,
                // AppColors.black,
              ),
            ),
      ),
    );
  }
}
