import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/routes/app_router.dart';
import 'package:car_wash_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

class CarWashApp extends StatelessWidget {
  const CarWashApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      routes: getRoutes,
      initialRoute: Routes.initialRoute,
    );
  }
}
