import 'package:micro_app_restaurant/features/home/domain/entities/restaurant_entity.dart';

class RestaurantModel extends RestaurantEntity {
  const RestaurantModel({
    super.id,
    super.name,
    super.price,
    super.address,
    super.status,
    super.category,
    super.pathImage,
    super.rating,
    super.totalReviews,
    super.isFavorite,
    // super.listReview,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      address: json['address'],
      category: json['category'],
      status: json['status'],
      pathImage: json['photos'],
      rating: json['rating'],
      totalReviews: json['totalReviews'],
      isFavorite: json['isFavorite'],
      //listReview: json['listReview'],
    );
  }
}
