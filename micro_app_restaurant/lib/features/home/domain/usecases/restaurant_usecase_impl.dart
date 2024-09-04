import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';
import 'package:micro_app_restaurant/features/home/domain/repositories/restaurant_repository.dart';
import 'package:micro_app_restaurant/features/home/domain/usecases/restaurant_usecase.dart';

class RestaurantUsecaseImpl implements RestaurantUsecase {
  final RestaurantRepository _repository;

  RestaurantUsecaseImpl(this._repository);

  @override
  Future<List<RestaurantModel?>> fetchRestaurant() async {
    return await _repository.fetchRestaurant();
  }
}
