import 'package:dartz/dartz.dart';
import 'package:tractian_challenge/features/companies/domain/entities/company.dart';
import 'package:tractian_challenge/features/companies/domain/results/get_companies_failed_result.dart';

abstract class CompaniesRepository {
  Future<Either<GetCompaniesFailedResult, List<Company>>> getLocations();
}
