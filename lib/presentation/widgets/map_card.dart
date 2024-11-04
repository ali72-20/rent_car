import 'package:flutter/cupertino.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/app_images.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
      child: Container(
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(image: AssetImage(AppImages.maps), fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.black12,
                  blurRadius: 10,
                  spreadRadius: 5
              )
            ]
        ),
      ),
    );
  }
}
