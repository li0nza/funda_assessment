import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:funda_assessment/presentation/bloc/property/property_cubit.dart';
import 'package:funda_assessment/presentation/bloc/property/property_state.dart';
import 'package:mockito/mockito.dart';

import '../../data/helpers/test_property_model.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetPropertyDetails mockGetPropertyDetails;

  setUp(() {
    mockGetPropertyDetails = MockGetPropertyDetails();
  });

  Property tPropertyDetails = TestPropertyModel.tPropertyModel;

  blocTest<PropertyCubit, PropertyState>(
    'Should return "PropertyState.hasData" when data has been fetched successfully',
    build: () => PropertyCubit(mockGetPropertyDetails),
    act: (cubit) {
      when(mockGetPropertyDetails.execute(id: 'be375522-ffab-4110-9e4e-51ec12195a1a'))
          .thenAnswer((_) async => Right(tPropertyDetails));
      cubit.fetchPropertyDetails(id: 'be375522-ffab-4110-9e4e-51ec12195a1a');
    },
    wait: const Duration(milliseconds: 300),
    expect: () => [
      PropertyState.hasData(property: tPropertyDetails),
    ],
    verify: (bloc) {
      verify(mockGetPropertyDetails.execute(id: 'be375522-ffab-4110-9e4e-51ec12195a1a'));
    },
  );

  blocTest<PropertyCubit, PropertyState>(
    'Should return "PropertyState.error" when fetching data fails',
    build: () => PropertyCubit(mockGetPropertyDetails),
    act: (cubit) {
      when(mockGetPropertyDetails.execute(id: 'be375522-ffab-4110-9e4e-51ec12195a1a'))
          .thenAnswer((_) async => const Left(ServerFailure('')));
      cubit.fetchPropertyDetails(id: 'be375522-ffab-4110-9e4e-51ec12195a1a');
    },
    expect: () => [
      const PropertyState.error(error: ''),
    ],
    verify: (bloc) {
      verify(mockGetPropertyDetails.execute(id: 'be375522-ffab-4110-9e4e-51ec12195a1a'));
    },
  );
}
