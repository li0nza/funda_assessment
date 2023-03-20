import 'dart:io';

import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:funda_assessment/data/helpers/rest_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements http.Client {}

class FakeUri extends Fake implements Uri {}

void main() {
  late RestClient restClient;
  late MockHttpClient mockHttpClient;

  setUpAll(() {
    registerFallbackValue(FakeUri());
    mockHttpClient = MockHttpClient();
    restClient = RestClient(client: mockHttpClient);
  });

  group('Rest client tests', () {
    final String dummyString = File('test/data/dummy_data/funda_data.json').readAsStringSync();

    test(
      'Should return a [http.Response] with [response.statusCode = 200] and [response.body a json string] when a successful call is made',
      () async {
        // arrange
        when(
          () => mockHttpClient.get(any()),
        ).thenAnswer(
          (_) async => http.Response(dummyString, 200),
        );

        // act
        final result = await restClient.get(endpoint: '');

        // assert
        expect(result.body.isNotEmpty && result.statusCode == 200, true);
      },
    );
    test(
      'Should return a [http.Response] with [response.statusCode = 200] and [response.body a json string] when a successful call with [urlParams] is made',
      () async {
        // arrange
        when(
          () => mockHttpClient.get(any()),
        ).thenAnswer(
          (_) async => http.Response(dummyString, 200),
        );

        // act
        final result = await restClient.get(endpoint: '', urlParams: {'page': '1'});

        // assert
        expect(result.body.isNotEmpty && result.statusCode == 200, true);
      },
    );

    test(
      'Should return a [SocketException] if no connectivity is available',
      () async {
        // arrange
        when(
          () => mockHttpClient.get(any()),
        ).thenThrow(const SocketException('Socket Exception'));

        // act
        try {
          final result = await restClient.get(endpoint: '', urlParams: {'page': '1'});
          return result;
        } catch (error) {
          expect(error, isA<FetchDataException>());
        }

      },
    );
    test(
      'Should return a [Exception] if a timeout occurs',
      () async {
        // arrange
        when(
          () => mockHttpClient.get(any()),
        ).thenThrow( Exception('Timeout'));

        // act
        try {
          final result = await restClient.get(endpoint: '', urlParams: {'page': '1'});
          return result;
        } catch (error) {
          expect(error, isA<FetchDataException>());
        }

      },
    );
  });
}
