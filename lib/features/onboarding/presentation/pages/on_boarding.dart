import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rent_car/core/utilities/app_colors.dart';
import 'package:rent_car/core/utilities/app_images.dart';

import '../../../../core/utilities/styles.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onBoaring),
                  fit: BoxFit.cover
              )

            ),
          ),
          Column(
            children: [
              Text(
                "${AppLocalizations.of(context)!.premiumCars}\n"
                "${AppLocalizations.of(context)!.enjoyTheLuxury}",
                style: Styles.style32,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${AppLocalizations.of(context)!.premiumAndPrestigeCarDailyRental}\n${AppLocalizations.of(context)!.experienceTheThrillAtALowerPrice}",
                style: Styles.style16,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 320,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.black,
                    backgroundColor: AppColors.white
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.letsGo,
                    style: Styles.style16.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
