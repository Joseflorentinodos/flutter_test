import 'package:micro_app_dependencies/micro_app_dependencies.dart';
import 'package:micro_app_restaurant/features/home/data/datasources/restaurant_datasource.dart';
import 'package:micro_app_restaurant/features/home/data/respositories/restaurant_repository_impl.dart';
import 'package:micro_app_restaurant/features/home/domain/repositories/restaurant_repository.dart';
import 'package:micro_app_restaurant/features/home/domain/usecases/restaurant_usecase.dart';
import 'package:micro_app_restaurant/features/home/domain/usecases/restaurant_usecase_impl.dart';
import 'package:micro_app_restaurant/features/home/external/restaurant_datasource_impl.dart';
import 'package:micro_app_restaurant/features/home/presentation/cubit/cubit/restaurant_cubit.dart';

class RestaurantLocator {
  final _serviceLocator = GetIt.instance;

  void initServiceLocator() {
    if (!_serviceLocator.isRegistered<RestaurantUsecase>()) {
      _serviceLocator.registerLazySingleton<RestaurantUsecase>(
        () => RestaurantUsecaseImpl(
          _serviceLocator(),
        ),
      );
    }
    if (!_serviceLocator.isRegistered<RestaurantRepository>()) {
      _serviceLocator.registerLazySingleton<RestaurantRepository>(
        () => RestaurantRepositoryImpl(
          _serviceLocator(),
        ),
      );
    }

    if (!_serviceLocator.isRegistered<RestaurantDatasource>()) {
      _serviceLocator.registerLazySingleton<RestaurantDatasource>(
          () => RestaurantDatasourceImpl(_serviceLocator()));
    }

    if (!_serviceLocator.isRegistered<RestaurantCubit>()) {
      _serviceLocator.registerLazySingleton<RestaurantCubit>(
          () => RestaurantCubit(_serviceLocator<RestaurantUsecase>()));
    }
  }
}
