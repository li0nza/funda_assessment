import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:dartz/dartz.dart';
import 'package:funda_assessment/domain/repositories/funda_data_repository.dart';

/// Usecase that interacts with the [FundaDataRepository], used to fetch a [FundaData]
class GetFundaData {
  final FundaDataRepository repository;

  GetFundaData(this.repository);

  Future<Either<Failure, FundaData>> execute({int page = 0, String search = ''}) {
    return repository.getFundaData(page: page, search: search);
  }
}
