import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class CompaniesDataSource {
  Future<Response> getLocations();
}

@Injectable(as: CompaniesDataSource)
final class CompaniesDataSourceImpl implements CompaniesDataSource {
  const CompaniesDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<Response> getLocations() {
    return dio.get('/companies');
  }
}
