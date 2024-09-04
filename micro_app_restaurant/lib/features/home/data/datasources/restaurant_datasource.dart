import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';

abstract class RestaurantDatasource {
  Future<List<RestaurantModel?>> fetchRestaurant();
}
