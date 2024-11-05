import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/styles.dart';

class FeatureIcons  extends StatelessWidget {
  const FeatureIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        featureIcon(Icons.local_gas_station, "Diesel", "Common Rail"),
        featureIcon(Icons.speed, "Acceleration", "0 - 100km /s"),
        featureIcon(Icons.ac_unit, "Cold", "Temp Control"),
      ],
    );
  }
}

Widget featureIcon(IconData icon, String title, String subTitle){
  return Container(
    width: 100,
    height: 100,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColors.gray, width: 1)
    ),
    child: Column(
      children: [
        Icon(icon, size: 28,),
        Text(title, style:Styles.style12,),
        Text(subTitle, style: Styles.style10,)
      ],
    ),
  );
}