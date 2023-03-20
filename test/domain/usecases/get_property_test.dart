import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/domain/usecases/get_funda_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../data/helpers/test_funda_data_model.dart';
import '../../helpers/test_helper.mocks.dart';

Future<void> main() async {
  late MockFundaDataRepository mockFundaDataRepository;
  late GetFundaData usecase;

  setUp(() {
    mockFundaDataRepository = MockFundaDataRepository();
    usecase = GetFundaData(mockFundaDataRepository);
  });

  FundaData tFundaData = TestFundaDataModel.tFundaData;

  test(
    'Get FundaData from repository',
    () async {
      // arrange
      when(mockFundaDataRepository.getFundaData(page: 0, search: '')).thenAnswer((_) async => Right(tFundaData));

      // act
      final result = await usecase.execute();

      // assert
      expect(result, equals(Right(tFundaData)));
    },
  );
}
