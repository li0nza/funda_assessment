import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:funda_assessment/domain/usecases/get_property_details.dart';
import 'package:mockito/mockito.dart';

import '../../data/helpers/test_property_model.dart';
import '../../helpers/test_helper.mocks.dart';

Future<void> main() async {
  late MockPropertyRepository mockPropertyRepository;
  late GetPropertyDetails usecase;

  setUp(() {
    mockPropertyRepository = MockPropertyRepository();
    usecase = GetPropertyDetails(mockPropertyRepository);
  });

  Property tProperty = TestPropertyModel.tPropertyModel;

  test(
    'Get property Details from repository',
    () async {
      // arrange
      when(mockPropertyRepository.getPropertyDetails(id: 'be375522-ffab-4110-9e4e-51ec12195a1a'))
          .thenAnswer((_) async => Right(tProperty));

      // act
      final result = await usecase.execute(id :'be375522-ffab-4110-9e4e-51ec12195a1a');

      // assert
      expect(result, equals(Right(tProperty)));
    },
  );
}
