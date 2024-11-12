import 'package:rent_car/domain/entities/car_entity.dart';

abstract class CarRepo{
  Future<List<CarEntity>> fetchCar();
}