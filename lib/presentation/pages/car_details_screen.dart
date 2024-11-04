import 'package:flutter/material.dart';
import '../../domain/entities/car.dart';
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
      body: CatDetailsCard(
        car: Car("BMW", 10, 45, 100),
      ),
    );
  }
}
