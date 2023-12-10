import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapy/core/theme/styles.dart';
import 'package:mapy/core/widgets/custom_button.dart';
import 'package:mapy/features/auth/presentation/views/widgets/bold_text_widget.dart';
import 'package:mapy/features/auth/presentation/views/widgets/pin_code_widget.dart';

class OtpViewBody extends StatelessWidget {
  final String phoneNumber;
  const OtpViewBody({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    print("ph $phoneNumber");
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const BoldTextWidget(text: "What is your phone number?"),
        SizedBox(
          height: 20.h,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Enter your 6 digit code numbers sent to ",
            style: Styles.style18PrimaryColorw300,
          ),
          TextSpan(
            text: phoneNumber,
            style: Styles.style18bluew300,
          ),
        ])),
        SizedBox(
          height: 40.h,
        ),
        PinCode(
          onChanged: (value) {},
        ),
        SizedBox(
          height: 40.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 0.3.sw,
            child: CustomButton(
              text: "Verify",
              onPressed: () {},
            ),
          ),
        )
      ]),
    ));
  }
}
