import 'package:flutter/material.dart';
import 'package:micro_app_dependencies/micro_app_dependencies.dart';
import 'package:micro_app_ds/micro_app_ds.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';
import 'package:micro_app_restaurant/features/home/presentation/cubit/cubit/restaurant_cubit.dart';
import 'package:micro_app_restaurant/features/home/presentation/restaurant_detail_page.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  late final RestaurantCubit cubit;

  @override
  void initState() {
    cubit = BlocProvider.of<RestaurantCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: BlocBuilder<RestaurantCubit, RestaurantState>(
        bloc: cubit,
        builder: (_, state) {
          if (state is RestaurantInitial) {
            return const DSProgress();
          } else if (state is RestaurantLoading) {
            return const DSProgress();
          } else if (state is RestaurantLoaded) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.restaurant.length,
              itemBuilder: (context, index) {
                RestaurantModel item = state.restaurant[index]!;
                return DSCardList(
                  pathimage: item.pathImage,
                  title: item.name,
                  subTitle: '\$${item.price} Italian',
                  status: item.status,
                  rating: item.rating,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RestaurantDetailPage(
                        restaurant: item,
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text('error'));
          }
        },
      ),
    );
  }
}
