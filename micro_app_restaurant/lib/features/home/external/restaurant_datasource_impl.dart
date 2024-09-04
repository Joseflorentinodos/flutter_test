import 'package:micro_app_http/micro_app_http.dart';
import 'package:micro_app_restaurant/cores/mocks/resturant_mock.dart';
import 'package:micro_app_restaurant/features/home/data/datasources/restaurant_datasource.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';

class RestaurantDatasourceImpl implements RestaurantDatasource {
  final ClientHttp _httpClient;
  static const route = '/cashier/deposit/screen-info?platform=mobile';
  RestaurantDatasourceImpl(this._httpClient);

  @override
  Future<List<RestaurantModel?>> fetchRestaurant() async {
    List<RestaurantModel?> list = [];
    try {
      final response = RestaurantMock.mockEnable
          ? await RestaurantMock.getRestaurant(route)
          : await _httpClient.get(url: route);
      List? result = response.data['data']['search']['business'];

      for (var item in result ?? []) {
        list.add(RestaurantModel.fromJson(item));
      }
      return list;
    } on HttpClientException catch (e) {
      if (e.code == 401) {
        throw FailureSystem(
          statusCode: e.code.toString(),
          messageError: e.message,
          title: 'Unauthorized user - ${e.code}',
        );
      }
      if (e.code == 404) {
        throw FailureSystem(
          statusCode: e.code.toString(),
          messageError: e.message,
          title: 'Route not found - ${e.code}',
        );
      }

      throw FailureSystem(
        statusCode: e.code.toString(),
        messageError: e.message,
        title: 'Error when trying to list - ${e.code}',
      );
    }
  }
}
