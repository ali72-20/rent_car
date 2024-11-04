import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/app_images.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: AppColors.carCard,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: AppColors.black12,
                  blurRadius: 10,
                  spreadRadius: 5
              )
            ]
        ),
        child: const Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(AppImages.user),
            ),
            Text("Ali safwat", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("\$20.10", style: TextStyle(color: AppColors.gray),)
          ],
        ),
      ),
    );
  }
}
