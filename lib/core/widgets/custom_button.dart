import 'package:flutter/material.dart';
import 'package:mapy/core/theme/colors.dart';
import 'package:mapy/core/theme/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? MyColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size.fromHeight(50),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
      child: Text(
        text,
        style: Styles.style20Whitew700,
      ),
    );
  }
}
