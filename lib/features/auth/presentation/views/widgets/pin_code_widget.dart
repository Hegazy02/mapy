import 'package:flutter/material.dart';
import 'package:mapy/core/theme/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {
  final void Function(String)? onChanged;
  const PinCode({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: MyColors.primaryColor,
      keyboardType: TextInputType.number,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        inactiveColor: Colors.white,
        activeColor: MyColors.blue,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      length: 6,
      onChanged: onChanged,
    );
  }
}
