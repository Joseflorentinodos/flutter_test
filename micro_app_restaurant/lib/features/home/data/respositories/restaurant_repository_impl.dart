import 'package:micro_app_http/micro_app_http.dart';
import 'package:micro_app_restaurant/features/home/data/datasources/restaurant_datasource.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';
import 'package:micro_app_restaurant/features/home/domain/repositories/restaurant_repository.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  final RestaurantDatasource _datasource;
  RestaurantRepositoryImpl(this._datasource);
  @override
  Future<List<RestaurantModel?>> fetchRestaurant() async {
    try {
      final result = await _datasource.fetchRestaurant();
      return result;
    } catch (e) {
      throw e as FailureSystem;
    }
  }
}
