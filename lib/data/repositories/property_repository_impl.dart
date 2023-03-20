import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:funda_assessment/data/datasources/remote_data_source.dart';
import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:funda_assessment/domain/repositories/property_repository.dart';

/// Implements [PropertyRepository], requires a [RemoteDataSource]
class PropertyRepositoryImpl implements PropertyRepository {
  final RemoteDataSource remoteDataSource;

  PropertyRepositoryImpl({required this.remoteDataSource});

  /// [getPropertyDetails] takes a `page` and/or `search` paramater and makes a call to the `RemoteDataSource`
  /// Returns a [Property]
  @override
  Future<Either<Failure, Property>> getPropertyDetails({required String id}) async {
    try {
      final result = await remoteDataSource.get(endpoint: id);
      final Property data = Property.fromJson(jsonDecode(result));
      log(data.toString());
      log(data.toJson().toString());
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
