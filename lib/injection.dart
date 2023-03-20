import 'package:funda_assessment/data/datasources/remote_data_source.dart';
import 'package:funda_assessment/data/helpers/rest_client.dart';
import 'package:funda_assessment/data/repositories/funda_data_repository_impl.dart';
import 'package:funda_assessment/data/repositories/property_repository_impl.dart';
import 'package:funda_assessment/domain/repositories/funda_data_repository.dart';
import 'package:funda_assessment/domain/repositories/property_repository.dart';
import 'package:funda_assessment/domain/usecases/get_funda_data.dart';
import 'package:funda_assessment/domain/usecases/get_property_details.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_cubit.dart';
import 'package:funda_assessment/presentation/bloc/property/property_cubit.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void init() {
  // cubits
  locator.registerFactory(() => FundaDataCubit(locator()));
  locator.registerFactory(() => PropertyCubit(locator()));

  // use cases
  locator.registerLazySingleton(() => GetFundaData(locator()));
  locator.registerLazySingleton(() => GetPropertyDetails(locator()));

  // repositories
  locator.registerLazySingleton<FundaDataRepository>(
    () => FundaDataRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );
  locator.registerLazySingleton<PropertyRepository>(
    () => PropertyRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      client: locator(),
    ),
  );

  // external
  locator.registerLazySingleton(() => RestClient(client: http.Client()));
}