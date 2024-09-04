import 'package:flutter/material.dart';
import 'package:micro_app_restaurant/features/home/presentation/home_page.dart';
import 'package:restaurant_tour/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initAppServiceLocator();
  runApp(const RestaurantTour());
}

class RestaurantTour extends StatelessWidget {
  const RestaurantTour({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Restaurant Tour',
      home: HomePage(),
    );
  }
}
