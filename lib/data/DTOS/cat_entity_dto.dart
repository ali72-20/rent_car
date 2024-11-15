import 'package:rent_car/domain/entities/car_entity.dart';
import '../../data/models/car_model.dart'; // Import the Car model here

class CarEntityDTO {
  String? model;
  double? distance;
  double? fuelCapacity;
  double? pricePerHour;

  CarEntityDTO({this.model, this.distance, this.fuelCapacity, this.pricePerHour});

  factory CarEntityDTO.fromCar(Car car) {
    return CarEntityDTO(
      model: car.model,
      distance: car.distance,
      fuelCapacity: car.fuelCapacity,
      pricePerHour: car.pricePerHour,
    );
  }


  CarEntity toDomain() {
    return CarEntity(
      model: model,
      distance: distance,
      fuelCapacity: fuelCapacity,
      pricePerHour: pricePerHour,
    );
  }

  static List<CarEntity> fromCarList(List<Car> cars) {
    return cars
        .map((car) => CarEntityDTO.fromCar(car).toDomain())
        .toList();
  }
}
