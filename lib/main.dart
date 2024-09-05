import 'package:car_wash_app/app/car_wash_app.dart';
import 'package:car_wash_app/core/helpers/observer/my_bloc_observer.dart';
import 'package:car_wash_app/core/services/cache_helper.dart';
import 'package:car_wash_app/core/services/dependency_injection.dart';
import 'package:car_wash_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //! set up Bloc Observers
  Bloc.observer = AppBlocObservers();

  //! set up Get It
  setupGetIt();

  //! Here The Initialize of cache => sharedPreferences
  await getIt<CacheHelper>().init();

  //! system ui
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  //! run app
  runApp(const CarWashApp());
}
