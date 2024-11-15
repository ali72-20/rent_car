import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_car/core/app_routes.dart';
import 'package:rent_car/core/utilities/styles.dart';
import 'package:rent_car/presentation/widgets/map_card.dart';
import 'package:rent_car/presentation/widgets/more_cards.dart';
import 'package:rent_car/presentation/widgets/user_card.dart';
import '../../domain/entities/car_entity.dart';
import '../widgets/car_details_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              context.go(AppRouter.homePath);
            },
          ),
          title: Text(
            AppLocalizations.of(context)!.information,
            style: Styles.style20,
            textAlign: TextAlign.center,
          ),
          trailing: const Icon(Icons.info_outline),
        ),
      ),
      body: Column(
        children: [
          CarDetailsCard(
            car: CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                UserCard(),
                SizedBox(
                  width: 20,
                ),
                MapCard()
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(car: CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),),
                MoreCard(car: CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),),
                MoreCard(car:CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
