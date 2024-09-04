import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';
import 'package:micro_app_restaurant/features/home/data/datasources/restaurant_datasource.dart';
import 'package:micro_app_restaurant/features/home/data/respositories/restaurant_repository_impl.dart';

class MockRestaurantDatasource extends Mock implements RestaurantDatasource {}

void main() {
  late RestaurantRepositoryImpl repository;
  late MockRestaurantDatasource mockDatasource;

  setUp(() {
    mockDatasource = MockRestaurantDatasource();
    repository = RestaurantRepositoryImpl(mockDatasource);
  });

  group('fetchRestaurant', () {
    final tRestaurantList = <RestaurantModel?>[
      const RestaurantModel(id: '45456', name: 'Restaurant 1'),
      const RestaurantModel(id: '52456', name: 'Restaurant 2'),
    ];

    test(
        'should return a list of RestaurantModel when the datasource returns data',
        () async {
      when(mockDatasource.fetchRestaurant())
          .thenAnswer((_) async => tRestaurantList);

      final result = await repository.fetchRestaurant();

      expect(result, tRestaurantList);
      verify(mockDatasource.fetchRestaurant());
      verifyNoMoreInteractions(mockDatasource);
    });

    test('should throw an exception when the datasource throws an exception',
        () async {
      when(mockDatasource.fetchRestaurant())
          .thenThrow(Exception('Datasource error'));

      final call = repository.fetchRestaurant;

      expect(() => call(), throwsA(isA<Exception>()));
      verify(mockDatasource.fetchRestaurant());
      verifyNoMoreInteractions(mockDatasource);
    });
  });
}
