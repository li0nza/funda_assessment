import 'package:funda_assessment/data/datasources/remote_data_source.dart';
import 'package:funda_assessment/data/helpers/rest_client.dart';
import 'package:funda_assessment/domain/repositories/funda_data_repository.dart';
import 'package:funda_assessment/domain/repositories/property_repository.dart';
import 'package:funda_assessment/domain/usecases/get_funda_data.dart';
import 'package:funda_assessment/domain/usecases/get_property_details.dart';
import 'package:mockito/annotations.dart';

import 'package:http/http.dart' as http;

@GenerateMocks([
  FundaDataRepository,
  PropertyRepository,
  GetFundaData,
  GetPropertyDetails,
  RemoteDataSource,
  RestClient,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
