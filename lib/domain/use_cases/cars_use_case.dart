import 'package:injectable/injectable.dart';
import 'package:rent_car/domain/entities/car_entity.dart';
import 'package:rent_car/domain/repositories/car_repo.dart';

@injectable
class CarUseCase{
  final CarRepo _carRepo;
  CarUseCase(this._carRepo);

  Future<List<CarEntity>> invokeCars() async{
    return await _carRepo.fetchCar();
  }
}