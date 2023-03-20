import 'dart:convert';
import 'dart:io';

import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_cubit.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_state.dart';
import 'package:funda_assessment/presentation/pages/funda_data_page.dart';
import 'package:funda_assessment/presentation/widgets/loading.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assessment/presentation/widgets/property_overview.dart';
import 'package:get_it/get_it.dart';

import 'package:mocktail/mocktail.dart';

class MockFundaDataCubit extends MockCubit<FundaDataState> implements FundaDataCubit {}

class FakeFundaDataState extends Fake implements FundaDataState {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class FakeRoute extends Fake implements Route {}

void main() {
  late MockFundaDataCubit mockFundaDataCubit;
  late FundaData tFundaData;

  setUpAll(() async {
    HttpOverrides.global = null;
    registerFallbackValue(FakeFundaDataState());
    registerFallbackValue(FakeRoute());

    final di = GetIt.instance;
    di.registerFactory(() => mockFundaDataCubit);
  });

  setUp(() {
    mockFundaDataCubit = MockFundaDataCubit();
    final File dummyJsonFile = File('test/data/dummy_data/funda_data.json');
    final Map<String, dynamic> jsonMap = jsonDecode(dummyJsonFile.readAsStringSync());

    tFundaData = FundaData.fromJson(jsonMap);
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<FundaDataCubit>.value(
      value: mockFundaDataCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets(
    'Text field should trigger state to change from empty to loading',
    (WidgetTester tester) async {
      // arrange
      when(() => mockFundaDataCubit.state).thenReturn(const FundaDataState.loading());

      // act
      await tester.pumpWidget(makeTestableWidget(const FundaDataPage()));
      await tester.enterText(find.byType(TextField), 'delft');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      // assert
      verify(() => mockFundaDataCubit.search('delft')).called(1);
      expect(find.byType(TextField), equals(findsOneWidget));
    },
  );

  testWidgets(
    'Should show [Loading] widget when state is loading',
    (WidgetTester tester) async {
      // arrange
      when(() => mockFundaDataCubit.state).thenReturn(const FundaDataState.loading());

      // act
      await tester.pumpWidget(makeTestableWidget(const FundaDataPage()));

      // assert
      expect(find.byType(Loading), equals(findsOneWidget));
    },
  );

  testWidgets(
    'Should show [ListView] with entire page when state has data',
    (WidgetTester tester) async {
      // arrange
      when(() => mockFundaDataCubit.state)
          .thenReturn(FundaDataState.hasData(propertySummaries: tFundaData.properties, page: 0));

      // act
      await tester.pumpWidget(makeTestableWidget(const FundaDataPage()));

      // assert
      expect(find.byKey(const Key('funda_data_listview')), equals(findsOneWidget));
    },
  );

  testWidgets(
    'Should show a list tile for each artwork when state has data',
    (WidgetTester tester) async {
      // arrange
      when(() => mockFundaDataCubit.state)
          .thenReturn(FundaDataState.hasData(propertySummaries: tFundaData.properties, page: 0));

      // act
      await tester.pumpWidget(makeTestableWidget(const FundaDataPage()));

      // assert
      expect(find.byType(PropertyOverview), equals(findsAtLeastNWidgets(1)));
    },
  );

  testWidgets(
    'Should show try again widget when state is not loading, does have an error, but has no data',
    (WidgetTester tester) async {
      // arrange
      when(() => mockFundaDataCubit.state).thenReturn(const FundaDataState.error(error: ''));

      // act
      await tester.pumpWidget(makeTestableWidget(const FundaDataPage()));

      // assert
      expect(find.byKey(const Key('funda_data_error')), equals(findsOneWidget));
    },
  );

  testWidgets(
    'Should show [Error] widget when the state has an error',
    (WidgetTester tester) async {
      // arrange
      when(() => mockFundaDataCubit.state).thenReturn(const FundaDataState.error(error: ''));

      // act
      await tester.pumpWidget(makeTestableWidget(const FundaDataPage()));

      // assert
      expect(find.byKey(const Key('funda_data_error')), equals(findsOneWidget));
    },
  );
}
