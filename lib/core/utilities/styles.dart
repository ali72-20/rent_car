import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class Styles{

  static const style32 = TextStyle(
    color: AppColors.white,
    fontSize: 32,
    fontWeight: FontWeight.bold
  );

  static const style16 = TextStyle(
      color: AppColors.gray,
      fontSize: 15,
  );
  static const style20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
  );
  static const style14 = TextStyle(
      fontSize: 14,
      color: AppColors.white,
  );
  static const style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const style22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const style10 = TextStyle(
    fontSize: 10,
    color: AppColors.gray
  );

}