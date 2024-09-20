// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../app/router/app_router.dart' as _i559;
import '../app/services/data_generator_service.dart' as _i165;
import '../app/services/remote_data_service.dart' as _i541;

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
    gh.singleton<_i165.DataGeneratorService>(
        () => _i165.DataGeneratorService());
    gh.singleton<_i559.AppRouter>(() => _i559.AppRouter());
    gh.singleton<_i541.RemoteDataService>(() =>
        _i541.RemoteDataService(dataSource: gh<_i165.DataGeneratorService>())
          ..init());
    return this;
  }
}
