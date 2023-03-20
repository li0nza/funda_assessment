import 'dart:convert';
import 'dart:io';

import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_funda_data_model.dart';

Future<void> main() async {
  FundaData tFundaData = TestFundaDataModel.tFundaData;

  group('From json', () {
    test(
      'Should return a valid model from json',
      () async {
        final File dummyJsonFile = File('test/data/dummy_data/funda_data.json');
        final Map<String, dynamic> jsonMap = jsonDecode(dummyJsonFile.readAsStringSync());

        final result = FundaData.fromJson(jsonMap);

        expect(result, equals(tFundaData));
      },
    );
  });
}
