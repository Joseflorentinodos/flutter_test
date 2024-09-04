import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';

abstract class RestaurantRepository {
  Future<List<RestaurantModel?>> fetchRestaurant();
}
