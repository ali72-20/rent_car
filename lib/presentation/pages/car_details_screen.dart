import 'package:flutter/material.dart';
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
        title:  ListTile(
          leading: const Icon(Icons.arrow_back_ios_new),
          title: Text(AppLocalizations.of(context)!.information, style: Styles.style20, textAlign: TextAlign.center,),
          trailing: const Icon(Icons.info_outline),
        ),
      ),
      body: Column(
        children: [
          CarDetailsCard(
            car: CarEntity("BMW", 20, 45, 100),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                UserCard(),
                SizedBox(width: 20,),
                MapCard()
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                 MoreCard(car: CarEntity("BMW-1", 20, 45, 100)),
                 MoreCard(car: CarEntity("BMW-2", 30, 45, 150)),
                 MoreCard(car: CarEntity("BMW-2", 30, 45, 150)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
