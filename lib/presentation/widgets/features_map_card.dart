import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class FeaturesMapCard extends StatelessWidget {
  const FeaturesMapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.features,
              style: Styles.style24.copyWith(color: AppColors.black),
            ),
            //featureIcon
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$ car price per Hour/day",
                  style: Styles.style22,
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.black
                  ),
                  child: Text(AppLocalizations.of(context)!.bookNow, style: const TextStyle(color: AppColors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
