import 'package:car_wash_app/core/services/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
