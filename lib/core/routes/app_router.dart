import 'package:car_wash_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get getRoutes {
  return {
    Routes.initialRoute: (context) => const Scaffold(),
  };
}
