import 'package:flutter/material.dart';
import 'package:mapy/core/theme/colors.dart';
import 'package:mapy/core/theme/styles.dart';

class CutomTextField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isHiddeng;
  final IconData? iconData;
  final void Function()? onIconPressed;
  const CutomTextField(
      {super.key,
      required this.hintText,
      required this.onChanged,
      this.validator,
      this.isHiddeng,
      this.iconData,
      this.onIconPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: validator,
        obscureText: isHiddeng ?? false,
        decoration: InputDecoration(
          suffixIcon: iconData == null
              ? null
              : IconButton(onPressed: onIconPressed, icon: Icon(iconData)),
          hintText: hintText,
          hintStyle: Styles.style12Grey4w500,
          enabledBorder: customBorder(MyColors.lightGrey),
          focusedBorder: customBorder(MyColors.primaryColor),
          errorBorder: customBorder(MyColors.red),
          focusedErrorBorder: customBorder(MyColors.red),
        ),
        onChanged: onChanged,
        style: Styles.style12darkBluew500,
      ),
    );
  }

  OutlineInputBorder customBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color));
  }
}
