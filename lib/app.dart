import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'core/router/go_router.dart';
import 'core/theme/theme_provider.dart';

class Tryiak extends StatelessWidget {
  const Tryiak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Tryiak',
          debugShowCheckedModeBanner: false,
          theme: Provider.of<ThemeProvider>(context).themeData,
          themeAnimationCurve: Curves.fastOutSlowIn,
          themeAnimationDuration: Duration(milliseconds: 1500),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: AppNavigation.router, 
        );
      },
    );
  }
}

