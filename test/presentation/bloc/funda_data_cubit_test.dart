import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_cubit.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_state.dart';
import 'package:mockito/mockito.dart';

import '../../data/helpers/test_funda_data_model.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetFundaData mockgetFundaData;

  setUp(() {
    mockgetFundaData = MockGetFundaData();
  });

  FundaData tFundaData = TestFundaDataModel.tFundaData;

  blocTest<FundaDataCubit, FundaDataState>(
    'Should return "FundaDataState.hasData" when data has been fetched successfully',
    build: () => FundaDataCubit(mockgetFundaData),
    act: (cubit) {
      when(mockgetFundaData.execute(page: 0, search: '')).thenAnswer((_) async => Right(tFundaData));
      cubit.fetchFundaData();
    },
    wait: const Duration(milliseconds: 300),
    expect: () => [
      FundaDataState.hasData(propertySummaries: tFundaData.properties, page: 1),
    ],
    verify: (bloc) {
      verify(mockgetFundaData.execute(page: 0, search: ''));
    },
  );

  blocTest<FundaDataCubit, FundaDataState>(
    'Should return "FundaDataState.hasData" when data has been fetched successfully after searching',
    build: () => FundaDataCubit(mockgetFundaData),
    act: (cubit) {
      when(mockgetFundaData.execute(page: 0, search: 'delft')).thenAnswer((_) async => Right(tFundaData));
      cubit.search('delft');
    },
    wait: const Duration(milliseconds: 100),
    expect: () => [
      FundaDataState.hasData(propertySummaries: tFundaData.properties, page: 1),
    ],
    verify: (bloc) {
      verify(mockgetFundaData.execute(page: 0, search: 'delft'));
    },
  );

  blocTest<FundaDataCubit, FundaDataState>(
    'Should return "FundaDataState.error" when fetching data fails',
    build: () => FundaDataCubit(mockgetFundaData),
    act: (cubit) {
      when(mockgetFundaData.execute(page: 0, search: '')).thenAnswer((_) async => const Left(ServerFailure('')));
      cubit.fetchFundaData();
    },
    expect: () => [
      const FundaDataState.error(error: ''),
    ],
    verify: (bloc) {
      verify(mockgetFundaData.execute(page: 0, search: ''));
    },
  );
}
