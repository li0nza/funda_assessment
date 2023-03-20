import 'package:funda_assessment/data/helpers/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:funda_assessment/domain/entities/property.dart';
import 'package:funda_assessment/domain/repositories/property_repository.dart';

/// Usecase that interacts with the [GetPropertyDetails], used to fetch a [Property]
class GetPropertyDetails {
  final PropertyRepository repository;

  GetPropertyDetails(this.repository);

  Future<Either<Failure, Property>> execute({required String id}) {
    return repository.getPropertyDetails(id: id);
  }
}
