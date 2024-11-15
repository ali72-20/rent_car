class Car{
  String? model;
  double? distance;
  double? fuelCapacity;
  double? pricePerHour;
  Car({this.model, this.distance, this.fuelCapacity, this.pricePerHour});


  factory Car.fromMap(Map<String,dynamic> map){
    return Car(
        model: map['mode'],
       distance : map['distance'],
       fuelCapacity: map['fuelCapacity'],
       pricePerHour: map['pricePerHour']
    );
  }
}