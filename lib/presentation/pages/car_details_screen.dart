import 'package:flutter/material.dart';
import 'package:rent_car/presentation/widgets/map_card.dart';
import 'package:rent_car/presentation/widgets/user_card.dart';
import '../../domain/entities/car_entity.dart';
import '../widgets/cat_details_card.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          leading: Icon(Icons.arrow_back_ios_new),
          trailing: Icon(Icons.info_outline),
        ),
      ),
      body: Column(
        children: [
          CatDetailsCard(
            car: CarEntity("BMW", 20, 45, 100),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              UserCard(),
              SizedBox(width: 20,),
              MapCard()
            ],
          )

        ],
      ),
    );
  }
}
