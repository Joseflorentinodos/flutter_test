import 'package:micro_app_ds/micro_app_ds.dart';

class RestaurantEntity {
  final String? id;
  final String? name;
  final String? pathImage;
  final String? price;
  final String? address;
  final Status? status;
  final String? category;
  final double? rating;
  final double? totalReviews;
  final bool? isFavorite;
  //final List<ListReviewEntity>? listReview;

  const RestaurantEntity({
    this.id,
    this.name,
    this.pathImage,
    this.address,
    this.status,
    this.price,
    this.category,
    this.totalReviews,
    this.rating,
    this.isFavorite,
    // this.listReview,
  });
}
