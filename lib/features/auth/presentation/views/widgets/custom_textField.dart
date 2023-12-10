import 'package:flutter/material.dart';
import 'package:mapy/core/theme/colors.dart';
import 'package:mapy/core/theme/styles.dart';

class CutomTextField extends StatelessWidget {
  final String? hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isHiddeng;
  final IconData? iconData;
  final void Function()? onIconPressed;
  final TextInputType? keyboardType;
  const CutomTextField({
    super.key,
    this.hintText,
    required this.onChanged,
    this.validator,
    this.isHiddeng,
    this.iconData,
    this.onIconPressed,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: validator,
        keyboardType: keyboardType ?? TextInputType.text,
        cursorColor: MyColors.primaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          focusColor: MyColors.primaryColor,
          hoverColor: MyColors.primaryColor,
          hintStyle: Styles.style12PrimaryColorw400,
          enabledBorder: customBorder(MyColors.grey),
          focusedBorder: customBorder(MyColors.grey),
          errorBorder: customBorder(MyColors.red),
          focusedErrorBorder: customBorder(MyColors.red),
        ),
        onChanged: onChanged,
        style: Styles.style18PrimaryColorw300,
      ),
    );
  }

  OutlineInputBorder customBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color));
  }
}
