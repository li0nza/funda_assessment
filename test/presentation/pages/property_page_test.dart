import 'dart:io';

import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:funda_assessment/presentation/bloc/property/property_cubit.dart';
import 'package:funda_assessment/presentation/bloc/property/property_state.dart';
import 'package:funda_assessment/presentation/pages/property_page.dart';
import 'package:funda_assessment/presentation/widgets/loading.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import 'package:mocktail/mocktail.dart';

import '../../data/helpers/test_funda_data_model.dart';
import '../../data/helpers/test_property_model.dart';

class MockPropertyCubit extends MockCubit<PropertyState> implements PropertyCubit {}

class FakePropertyState extends Fake implements PropertyState {}

void main() {
  late MockPropertyCubit mockPropertyCubit;

  setUpAll(() async {
    HttpOverrides.global = null;
    registerFallbackValue(FakePropertyState());

    final di = GetIt.instance;
    di.registerFactory(() => mockPropertyCubit);
  });

  setUp(() {
    mockPropertyCubit = MockPropertyCubit();
  });

  Property tPropertyDetails = TestPropertyModel.tPropertyModel;
  FundaData tFundaData = TestFundaDataModel.tFundaData;

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<PropertyCubit>.value(
      value: mockPropertyCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets(
    'Should show [Loading] widget when state is loading',
    (WidgetTester tester) async {
      // arrange
      when(() => mockPropertyCubit.state).thenReturn(const PropertyState.loading());

      // act
      await tester.pumpWidget(makeTestableWidget(PropertyPage(
        propertySummary: tFundaData.properties[0],
      )));

      // assert
      expect(find.byType(Loading), equals(findsOneWidget));
    },
  );

  testWidgets(
    'Should show [ListView] with entire property when state has data',
    (WidgetTester tester) async {
      // arrange
      when(() => mockPropertyCubit.state).thenReturn(PropertyState.hasData(property: tPropertyDetails));

      // act
      await tester.pumpWidget(makeTestableWidget(PropertyPage(propertySummary: tFundaData.properties[0])));

      // assert
      expect(find.byKey(const Key('property_details_listview')), equals(findsOneWidget));
    },
  );
  testWidgets(
    'Should show [Error] widget when the state has an error',
    (WidgetTester tester) async {
      // arrange
      when(() => mockPropertyCubit.state).thenReturn(const PropertyState.error(error: ''));

      // act
      await tester.pumpWidget(makeTestableWidget(PropertyPage(
        propertySummary: tFundaData.properties[0],
      )));

      // assert
      expect(find.byKey(const Key('property_error_widget')), equals(findsOneWidget));
    },
  );
}
