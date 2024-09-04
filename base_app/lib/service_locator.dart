import 'package:micro_app_http/micro_app_http.dart';
import 'package:micro_app_restaurant/restaurant_locator.dart';

void initAppServiceLocator() {
  HttpLocator().initServiceLocator();
  RestaurantLocator().initServiceLocator();
}
