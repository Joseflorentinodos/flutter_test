import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_restaurant/features/home/data/models/restaurant_model.dart';
import 'package:micro_app_restaurant/features/home/domain/repositories/restaurant_repository.dart';
import 'package:micro_app_restaurant/features/home/domain/usecases/restaurant_usecase_impl.dart';
import 'package:mockito/mockito.dart';

class MockRestaurantRepository extends Mock implements RestaurantRepository {}

void main() {
  late RestaurantUsecaseImpl usecase;
  late MockRestaurantRepository mockRepository;

  setUp(() {
    mockRepository = MockRestaurantRepository();
    usecase = RestaurantUsecaseImpl(mockRepository);
  });

  group('fetchRestaurant', () {
    final tRestaurantList = <RestaurantModel>[
      const RestaurantModel(id: '121321', name: 'Restaurant 1'),
      const RestaurantModel(id: '12123123', name: 'Restaurant 2'),
    ];

    test(
        'must return a list of RestaurantModel when the repository returns data',
        () async {
      when(mockRepository.fetchRestaurant())
          .thenAnswer((_) async => tRestaurantList);

      final result = await usecase.fetchRestaurant();

      expect(result, tRestaurantList);
      verify(mockRepository.fetchRestaurant());
      verifyNoMoreInteractions(mockRepository);
    });

    test(
        'should return an empty list when the repository returns an empty list',
        () async {
      when(mockRepository.fetchRestaurant())
          .thenAnswer((_) async => <RestaurantModel>[]);

      final result = await usecase.fetchRestaurant();

      expect(result, <RestaurantModel>[]);
      verify(mockRepository.fetchRestaurant());
      verifyNoMoreInteractions(mockRepository);
    });

    test(
        'should propagate the exception when the repository throws an exception',
        () async {
      when(mockRepository.fetchRestaurant())
          .thenThrow(Exception('Repository error'));

      expect(() => usecase.fetchRestaurant(), throwsA(isA<Exception>()));

      verify(mockRepository.fetchRestaurant());
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
