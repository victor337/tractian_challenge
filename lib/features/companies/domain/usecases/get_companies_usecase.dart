import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tractian_challenge/features/companies/domain/entities/company.dart';
import 'package:tractian_challenge/features/companies/domain/repositories/companies_repository.dart';
import 'package:tractian_challenge/features/companies/domain/results/get_companies_failed_result.dart';

@injectable
final class GetCompaniesUsecase {
  const GetCompaniesUsecase({required this.repository});

  final CompaniesRepository repository;

  Future<Either<GetCompaniesFailedResult, List<Company>>> call() {
    return repository.getLocations();
  }
}
