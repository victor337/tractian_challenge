// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/companies/data/datasources/companies_datasource.dart' as _i132;
import '../../features/companies/data/repositories/companies_repository_impl.dart' as _i157;
import '../../features/companies/domain/repositories/companies_repository.dart' as _i466;
import '../../features/companies/domain/usecases/get_companies_usecase.dart' as _i989;
import '../logger/logger.dart' as _i512;
import 'di.dart' as _i913;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i132.CompaniesDataSource>(() => _i132.CompaniesDataSourceImpl(dio: gh<_i361.Dio>()));
    gh.factory<_i466.CompaniesRepository>(() => _i157.CompaniesRepositoryImpl(
          dataSource: gh<_i132.CompaniesDataSource>(),
          logger: gh<_i512.Logger>(),
        ));
    gh.factory<_i989.GetCompaniesUsecase>(() => _i989.GetCompaniesUsecase(repository: gh<_i466.CompaniesRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i913.RegisterModule {}
