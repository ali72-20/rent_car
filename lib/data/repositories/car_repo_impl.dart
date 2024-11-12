import 'package:injectable/injectable.dart';
import 'package:rent_car/data/data_sources/firebase_data_source.dart';
import 'package:rent_car/domain/entities/car_entity.dart';
import 'package:rent_car/domain/repositories/car_repo.dart';

import '../DTOS/cat_entity_dto.dart';

@Injectable(as: CarRepo)
class CarRepoImpl implements CarRepo{
  final FirebaseDataSource _firebaseDataSource;
  CarRepoImpl(this._firebaseDataSource);

  @override
  Future<List<CarEntity>> fetchCar() async{
    var response = await _firebaseDataSource.getCars();
    return CarEntityDTO.fromCarList(response);
  }

}