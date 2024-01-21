import 'package:flutter/material.dart';

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
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: const BoxDecoration(
              color: Color(0xff3D5CFF),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              // textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ),
      ),
    );
  }
}
