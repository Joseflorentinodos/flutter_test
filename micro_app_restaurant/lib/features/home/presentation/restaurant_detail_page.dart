import 'package:flutter/material.dart';
import 'package:micro_app_ds/micro_app_ds.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';

class RestaurantDetailPage extends StatelessWidget {
  final RestaurantModel restaurant;
  const RestaurantDetailPage({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          restaurant.name ?? '',
          style: DSTypographies.large,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: restaurant.isFavorite == true
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_outline)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 372,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(restaurant.pathImage ?? ''),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    children: [
                      Text("\$ ${restaurant.price} ${restaurant.category}",
                          style: DSTypographies.extraSmall),
                      const Spacer(),
                      DSStatus(status: restaurant.status),
                    ],
                  ),
                  const Divider(height: 48),
                  const Text("Address", style: DSTypographies.extraSmall),
                  const SizedBox(height: 24),
                  Text(
                    restaurant.address ?? '',
                    style: DSTypographies.small.copyWith(
                      fontWeight: DSFontWeights.extraMedium,
                    ),
                  ),
                  const Divider(height: 48),
                  const Text(
                    "Overall Rating",
                    style: DSTypographies.extraSmall,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(
                        "4.6",
                        style: DSTypographies.large.copyWith(fontSize: 28),
                      ),
                      const Icon(
                        Icons.star,
                        color: DSColors.yellowColor,
                        size: 12,
                      ),
                    ],
                  ),
                  const Divider(height: 48),
                  const Text("Reviews", style: DSTypographies.extraSmall),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return DSCardReview(
                    rating: restaurant.rating,
                    photo: restaurant.pathImage,
                    review:
                        'Review text goes here. Review text goes here. This is a review that is 2 lines long.',
                    nameUser: 'José',
                  );
                },
                childCount: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
