import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_car/core/di/di.dart';
import 'package:rent_car/core/utilities/app_images.dart';
import 'package:rent_car/core/utilities/styles.dart';
import 'package:rent_car/presentation/manager/home_managers/home_view_model.dart';
import 'package:rent_car/presentation/pages/car_list_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final viewModel = getIt.get<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => viewModel,
      child: Scaffold(
          body: CarListScreen()
      ),
    );
  }
}
