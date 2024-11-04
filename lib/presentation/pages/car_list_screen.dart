import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/presentation/widgets/car_item_card.dart';

import '../../domain/entities/car.dart';

class CarListScreen extends StatelessWidget {
   CarListScreen({super.key});
  List<CarItemCard> list = [
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        physics: const PageScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return list[index];
        },
      ),
    );
  }
}
