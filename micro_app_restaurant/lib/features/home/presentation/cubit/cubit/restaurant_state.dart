part of 'restaurant_cubit.dart';

@immutable
sealed class RestaurantState {}

final class RestaurantInitial extends RestaurantState {}

final class RestaurantLoading extends RestaurantState {}

final class RestaurantLoaded extends RestaurantState {
  final List<RestaurantModel?> restaurant;
  RestaurantLoaded(this.restaurant);
}

final class RestaurantError extends RestaurantState {
  final FailureSystem failureSystem;
  RestaurantError(this.failureSystem);
}
