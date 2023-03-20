import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:dartz/dartz.dart';
import 'package:funda_assessment/domain/entities/property.dart';

/// Repository providing an interface for a data-layer implementation
/// for fetching a [FundaData].
abstract class PropertyRepository {
  Future<Either<Failure, Property>> getPropertyDetails({required String id});
}
