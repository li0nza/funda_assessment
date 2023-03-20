import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:dartz/dartz.dart';

/// Repository providing an interface for a data-layer implementation
/// for fetching a [FundaData].
abstract class FundaDataRepository {
  Future<Either<Failure, FundaData>> getFundaData({required int page, required String search});
}
