import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:funda_assessment/data/datasources/remote_data_source.dart';
import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/domain/repositories/funda_data_repository.dart';

/// Implements [FundaDataRepository], requires a [RemoteDataSource]
class FundaDataRepositoryImpl implements FundaDataRepository {
  final RemoteDataSource remoteDataSource;

  FundaDataRepositoryImpl({required this.remoteDataSource});

  /// [getFundaData] takes a `page` and/or `search` paramater and makes a call to the `RemoteDataSource`
  /// Returns a [FundaData]
  @override
  Future<Either<Failure, FundaData>> getFundaData({required int page, required String search}) async {
    try {
      search = search.replaceAll(' ', '-');
      Map<String, String> urlParams = {'page': page.toString()};
      if (search.isNotEmpty) urlParams.addAll({'zo': '/$search/'});
      final result = await remoteDataSource.get(urlParams: urlParams, endpoint: '');
      final FundaData data = FundaData.fromJson(jsonDecode(result));
      print(data);
      return Right(data);
    } on FetchDataException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return Left(DataFetchFailure(error.toString()));
    }
  }
}
