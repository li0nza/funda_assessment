import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/domain/entities/property.dart';

import '../helpers/test_property_model.dart';

Future<void> main() async {


Property testPropertyModel = TestPropertyModel.tPropertyModel;

  group('From json', () {
    test(
      'Should return a valid [PropertyDetails] model from json',
      () async {
        final File dummyJsonFile = File('test/data/dummy_data/property.json');
        final Map<String, dynamic> jsonMap = jsonDecode(dummyJsonFile.readAsStringSync());

        final result = Property.fromJson(jsonMap);

        expect(result, equals(testPropertyModel));
      },
    );
  });
}
