import 'package:flutter/material.dart';
import 'package:micro_app_dependencies/micro_app_dependencies.dart';
import 'package:micro_app_ds/micro_app_ds.dart';
import 'package:micro_app_restaurant/features/home/presentation/cubit/cubit/restaurant_cubit.dart';
import 'package:micro_app_restaurant/features/home/presentation/my_favorites_page.dart';
import 'package:micro_app_restaurant/features/home/presentation/restaurant_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.instance<RestaurantCubit>()..fetchRestaurant(),
      child: const DSAppBarTabs(
        title: 'RestauranTour',
        length: 2,
        tabs: [
          Tab(text: 'All Restaurants'),
          Tab(text: 'My Favorites'),
        ],
        children: [
          RestaurantPage(),
          MyFavoritesPage(),
        ],
      ),
    );
  }
}
