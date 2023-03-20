import 'dart:convert';
import 'dart:io';

import 'package:funda_assessment/data/datasources/remote_data_source.dart';
import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockRestClient mockRestClient;
  late RemoteDataSourceImpl dataSource;
  Map<String, String> urlParams = {'page': '0'};

  setUp(() {
    mockRestClient = MockRestClient();
    dataSource = RemoteDataSourceImpl(client: mockRestClient);
  });

  group('Remote data source tests', () {
    final String dummyString = File('test/data/dummy_data/funda_data.json').readAsStringSync();
    final tFundaData = FundaData.fromJson(
      jsonDecode(dummyString),
    );

    test(
      'Should return a string that parses into a FundaData model when the response code is 200',
      () async {
        // arrange
        when(
          mockRestClient.get(endpoint: '', urlParams: urlParams),
        ).thenAnswer(
          (_) async => http.Response(dummyString, 200),
        );

        // act
        final result = await dataSource.get(endpoint: '', urlParams: urlParams);

        // assert
        expect(FundaData.fromJson(jsonDecode(result)), equals(tFundaData));
      },
    );

    test(
      'Should return a string that parses into a Property model when the response code is 200',
      () async {
        // arrange
        when(
          mockRestClient.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a', urlParams: null),
        ).thenAnswer(
          (_) async => http.Response(dummyString, 200),
        );

        // act
        final result = await dataSource.get(endpoint: 'be375522-ffab-4110-9e4e-51ec12195a1a', urlParams: null);

        // assert
        expect(FundaData.fromJson(jsonDecode(result)), equals(tFundaData));
      },
    );

    test(
      'Should throw a [BadRequestException] when the response code is 400',
      () async {
        // arrange
        when(
          mockRestClient.get(endpoint: '', urlParams: urlParams),
        ).thenAnswer(
          (_) async => http.Response('Not found', 400),
        );

        // act
        final call = dataSource.get(endpoint: '', urlParams: urlParams);

        // assert
        expect(() => call, throwsA(isA<BadRequestException>()));
      },
    );
    test(
      'Should throw an [UnauthorisedException] when the response code is 401 or 403',
      () async {
        // arrange
        when(
          mockRestClient.get(endpoint: '', urlParams: urlParams),
        ).thenAnswer(
          (_) async => http.Response('Not found', 401),
        );

        // act
        final call = dataSource.get(endpoint: '', urlParams: urlParams);

        // assert
        expect(() => call, throwsA(isA<UnauthorisedException>()));
      },
    );
    test(
      'Should throw a [FetchDataException] when the response code is 404 or other',
      () async {
        // arrange
        when(
          mockRestClient.get(endpoint: '', urlParams: urlParams),
        ).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        // act
        final call = dataSource.get(endpoint: '', urlParams: urlParams);

        // assert
        expect(() => call, throwsA(isA<FetchDataException>()));
      },
    );
  });
}
