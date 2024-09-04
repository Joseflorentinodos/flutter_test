import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_restaurant/features/home/external/restaurant_datasource_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:micro_app_http/micro_app_http.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';

class MockClientHttp extends Mock implements ClientHttp {}

void main() {
  late RestaurantDatasourceImpl datasource;
  late MockClientHttp mockHttpClient;

  setUp(() {
    mockHttpClient = MockClientHttp();
    datasource = RestaurantDatasourceImpl(mockHttpClient);
  });

  group('fetchRestaurant', () {
    test('should throw a FailureSystem when the API call returns 401',
        () async {
      when(mockHttpClient.get(url: RestaurantDatasourceImpl.route)).thenThrow(
          const HttpClientException(code: 401, message: 'Unauthorized'));

      expect(() => datasource.fetchRestaurant(), throwsA(isA<FailureSystem>()));
      verify(mockHttpClient.get(url: RestaurantDatasourceImpl.route));
      verifyNoMoreInteractions(mockHttpClient);
    });

    test('should throw a FailureSystem when the API call returns 404',
        () async {
      when(mockHttpClient.get(url: RestaurantDatasourceImpl.route)).thenThrow(
          const HttpClientException(code: 404, message: 'Not Found'));

      expect(() => datasource.fetchRestaurant(), throwsA(isA<FailureSystem>()));
      verify(mockHttpClient.get(url: RestaurantDatasourceImpl.route));
      verifyNoMoreInteractions(mockHttpClient);
    });

    test('should throw a FailureSystem for any other HttpClientException',
        () async {
      when(mockHttpClient.get(url: RestaurantDatasourceImpl.route)).thenThrow(
          const HttpClientException(
              code: 500, message: 'Internal Server Error'));

      expect(() => datasource.fetchRestaurant(), throwsA(isA<FailureSystem>()));
      verify(mockHttpClient.get(url: RestaurantDatasourceImpl.route));
      verifyNoMoreInteractions(mockHttpClient);
    });
  });
}
