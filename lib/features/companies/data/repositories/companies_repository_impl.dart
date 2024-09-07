import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tractian_challenge/core/logger/logger.dart';
import 'package:tractian_challenge/features/companies/data/datasources/companies_datasource.dart';
import 'package:tractian_challenge/features/companies/data/models/company_model.dart';
import 'package:tractian_challenge/features/companies/domain/entities/company.dart';
import 'package:tractian_challenge/features/companies/domain/repositories/companies_repository.dart';
import 'package:tractian_challenge/features/companies/domain/results/get_companies_failed_result.dart';

@Injectable(as: CompaniesRepository)
final class CompaniesRepositoryImpl implements CompaniesRepository {
  const CompaniesRepositoryImpl({required this.dataSource, required this.logger});

  final CompaniesDataSource dataSource;
  final Logger logger;

  @override
  Future<Either<GetCompaniesFailedResult, List<Company>>> getLocations() async {
    try {
      final response = await dataSource.getLocations();

      return Right([
        for (final company in response.data) CompanyModel.fromJson(company).toEntity(),
      ]);
    } catch (e, s) {
      logger.log(e, s);
      return const Left(GetCompaniesFailedResult.unknowError);
    }
  }
}
