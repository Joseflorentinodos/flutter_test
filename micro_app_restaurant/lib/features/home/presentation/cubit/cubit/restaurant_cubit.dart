// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:micro_app_dependencies/micro_app_dependencies.dart';
import 'package:micro_app_http/micro_app_http.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';
import 'package:micro_app_restaurant/features/home/domain/usecases/restaurant_usecase.dart';

part 'restaurant_state.dart';

class RestaurantCubit extends Cubit<RestaurantState> {
  final RestaurantUsecase _usecase;
  RestaurantCubit(this._usecase) : super(RestaurantInitial());

  Future<void> fetchRestaurant() async {
    List<RestaurantModel?> list = [];
    try {
      emit(RestaurantLoading());
      list = await _usecase.fetchRestaurant();
      if (list.isNotEmpty) {
        emit(RestaurantLoaded(list));
      } else {
        emit(RestaurantError(const FailureSystem()));
      }
    } catch (e) {
      emit(RestaurantError(const FailureSystem()));
    }
  }
}
