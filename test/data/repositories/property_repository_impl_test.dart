import 'dart:convert';
import 'dart:io';

import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/data/repositories/property_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';
import '../helpers/test_property_model.dart';

void main() {
  late MockRemoteDataSource mockRemoteDataSource;
  late PropertyRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = PropertyRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
    );
  });

  Property tPropertyDetails = TestPropertyModel.tPropertyModel;

  group('Get Property', () {
    test(
      'Should return a String that parses into a Property when the call to the data source is successful',
      () async {
        // arrange
        when(mockRemoteDataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a'))
            .thenAnswer((_) async => jsonEncode(tPropertyDetails.toJson()));

        // act
        final result = await repository.getPropertyDetails(id: 'be375522-ffab-4110-9e4e-51ec12195a1a');

        // assert
        verify(mockRemoteDataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a'));
        expect(result, equals(Right(tPropertyDetails)));
      },
    );

    test(
      'Should return a FetchDataException when the call to the data source is unsuccessful',
      () async {
        // arrange
        when(mockRemoteDataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a'))
            .thenThrow(FetchDataException());

        // act
        final result = await repository.getPropertyDetails(id: 'be375522-ffab-4110-9e4e-51ec12195a1a');

        // assert
        verify(mockRemoteDataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a'));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );

    test(
      'Should return a connection failure when the device has no connectivity',
      () async {
        // arrange
        when(mockRemoteDataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a'))
            .thenThrow(const SocketException('Failed to connect to the network'));

        // act
        final result = await repository.getPropertyDetails(id: 'be375522-ffab-4110-9e4e-51ec12195a1a');

        // assert
        verify(mockRemoteDataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a'));
        expect(
          result,
          equals(const Left(ConnectionFailure('Failed to connect to the network'))),
        );
      },
    );
  });
}
