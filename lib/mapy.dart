import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapy/core/routing/app_router.dart';
import 'package:mapy/core/routing/routes.dart';
import 'package:mapy/core/theme/colors.dart';

class Mapy extends StatelessWidget {
  const Mapy({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
          useMaterial3: true,
        ),
        initialRoute: Routes.loginView,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
