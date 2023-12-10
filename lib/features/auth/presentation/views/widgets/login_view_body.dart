import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapy/core/helpers/extentions.dart';
import 'package:mapy/core/routing/routes.dart';
import 'package:mapy/core/theme/styles.dart';
import 'package:mapy/core/widgets/custom_button.dart';
import 'package:mapy/features/auth/data/services/validation.dart';
import 'package:mapy/features/auth/presentation/views/widgets/custom_textField.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  String? phoneNumber;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  validation() {
    if (key.currentState!.validate()) {
      context.pushNamed(Routes.otpView, arguments: phoneNumber);
    }
  }

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
          children: [
            SizedBox(
              width: 10.w,
            ),
            Text(
              "🇪🇬 +2",
              style: Styles.style18PrimaryColorw300,
            ),
            SizedBox(
              width: 40.w,
            ),
            Form(
              key: key,
              child: Expanded(
                child: CutomTextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  validator: (val) {
                    return ValidationService.validateMobile(val);
                  },
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 0.3.sw,
            child: CustomButton(
              text: "Next",
              onPressed: () {
                validation();
              },
            ),
          ),
        )
      ]),
    ));
  }
}
