import 'package:funda_assessment/bloc_observer.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_cubit.dart';
import 'package:funda_assessment/presentation/bloc/property/property_cubit.dart';
import 'package:funda_assessment/presentation/pages/funda_data_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection.dart' as di;

void main() {
  di.init();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

/// This widget is the entry-point of the Widget-tree.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        // Initialize global state management, keep this to a minimum.
      providers: [
        BlocProvider(
          create: (_) => di.locator<FundaDataCubit>(),
        ),
        BlocProvider(
          create: (_) => di.locator<PropertyCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Funda Assessment',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.orange,
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontSize: 22.0),
              labelLarge: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
              bodyMedium: TextStyle(
                fontSize: 14.0,
              ),
              titleMedium: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              labelSmall: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                letterSpacing: 0.2,
              )),
        ),
        home: const FundaDataPage(),
      ),
    );
  }
}
