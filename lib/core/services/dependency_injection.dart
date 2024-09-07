import 'package:car_wash_app/core/services/cache_helper.dart';
import 'package:car_wash_app/featrue/login/data/data_source/login_remote_data_source_impl.dart';
import 'package:car_wash_app/featrue/login/data/repo/login_repo_impl.dart';
import 'package:car_wash_app/featrue/login/domain/use_cases/login_use_case.dart';
import 'package:car_wash_app/featrue/login/presentation/manger/login_cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());

  getIt.registerSingleton<LoginCubit>(
    LoginCubit(
      LoginUseCase(
        LoginRepoImpl(
          LoginRemoteDateSourceImpl(),
        ),
      ),
    ),
  );
}
