import 'package:flutter/material.dart';
import 'package:mapy/core/theme/styles.dart';

class BoldTextWidget extends StatelessWidget {
  final Alignment? alignment;
  final String text;
  const BoldTextWidget({super.key, this.alignment, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(
        text,
        style: Styles.style20PrimaryColorw700,
      ),
    );
  }
}
