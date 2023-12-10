import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapy/core/theme/styles.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool rememberMe = false;
  bool isHiddeng = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            "What is your phone number?",
            style: Styles.style20PrimaryColorw700,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Please enter your phone number to verify your account.",
          style: Styles.style18PrimaryColorw300,
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          children: [],
        )
      ]),
    ));
  }
}
