import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/core/utilities/app_colors.dart';
import 'package:rent_car/presentation/widgets/car_item_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../domain/entities/car_entity.dart';

class CarListScreen extends StatefulWidget {
  CarListScreen({super.key});

  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<CarEntity> list = [
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10, pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10, pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10, pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10, pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10, pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10, pricePerHour: 25),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_listKey.currentState != null) _addItems();
    });
  }

  void _addItems() {
    for (int i = 0; i < list.length; i++) {
      Future.delayed(Duration(milliseconds: 100 * i), () {
        if (_listKey.currentState != null && i < list.length) {
          _listKey.currentState!.insertItem(i);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.chooseYourCar),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        centerTitle: true,
      ),
      body: AnimatedList(
        key: _listKey,
        shrinkWrap: true,
        initialItemCount: list.length,
        itemBuilder: (context, index, animation) {
          if(index < list.length) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: CarItemCard(car: list[index]),
            );
          }else{
           return const SizedBox();
          }
        },
      ),
    );
  }
}
