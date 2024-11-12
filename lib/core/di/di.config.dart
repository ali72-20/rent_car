// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../domain/repositories/car_repo.dart' as _i559;
import '../../domain/use_cases/cars_use_case.dart' as _i636;
import '../../presentation/manager/home_managers/home_view_model.dart' as _i267;
import '../../presentation/manager/on_boaring_managers/on_boarding_view_model.dart'
    as _i49;

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
    gh.factory<_i267.HomeViewModel>(() => _i267.HomeViewModel());
    gh.factory<_i49.OnBoardingViewModel>(() => _i49.OnBoardingViewModel());
    gh.factory<_i636.CarUseCase>(() => _i636.CarUseCase(gh<_i559.CarRepo>()));
    return this;
  }
}
