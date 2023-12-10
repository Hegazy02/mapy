import 'package:flutter/material.dart';
import 'package:mapy/features/auth/presentation/views/widgets/Otp_view_body.dart';

class OtpView extends StatelessWidget {
  final String phoneNumber;
  const OtpView({super.key, required this.phoneNumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: OtpViewBody(phoneNumber: phoneNumber)));
  }
}
