import 'dart:convert';
import 'dart:io';

import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/data/repositories/funda_data_repository_impl.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';
import '../helpers/test_funda_data_model.dart';

void main() {
  late MockRemoteDataSource mockRemoteDataSource;
  late FundaDataRepositoryImpl repository;
  Map<String, String> urlParams = {'page': '0'};

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = FundaDataRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
    );
  });

  FundaData tFundaData = TestFundaDataModel.tFundaData;

  final File dummyJsonFile = File('test/data/dummy_data/funda_data.json');

  group('Get FundaData', () {
    test(
      'Should return a String that parses into a FundaData when the call to the data source is successful',
      () async {
        // arrange
        when(mockRemoteDataSource.get(endpoint: '', urlParams: urlParams))
            .thenAnswer((_) async => dummyJsonFile.readAsStringSync());

        // act
        final result = await repository.getFundaData(page: 0, search: '');

        // assert
        verify(mockRemoteDataSource.get(endpoint: '', urlParams: urlParams));
        expect(result, equals(Right(tFundaData)));
      },
    );

    test(
      'Should return a FetchDataException when the call to the data source is unsuccessful',
      () async {
        // arrange
        when(mockRemoteDataSource.get(endpoint: '', urlParams: urlParams)).thenThrow(FetchDataException());

        // act
        final result = await repository.getFundaData(page: 0, search: '');

        // assert
        verify(mockRemoteDataSource.get(endpoint: '', urlParams: urlParams));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );

    test(
      'Should return a connection failure when the device has no connectivity',
      () async {
        // arrange
        when(mockRemoteDataSource.get(endpoint: '', urlParams: urlParams))
            .thenThrow(const SocketException('Failed to connect to the network'));

        // act
        final result = await repository.getFundaData(page: 0, search: '');

        // assert
        verify(mockRemoteDataSource.get(endpoint: '', urlParams: urlParams));
        expect(
          result,
          equals(const Left(ConnectionFailure('Failed to connect to the network'))),
        );
      },
    );
  });
}
