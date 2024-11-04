import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_car/core/app_routes.dart';
import 'package:rent_car/presentation/manager/home_managers/home_states.dart';
import 'package:rent_car/presentation/manager/home_managers/home_view_model.dart';
import 'package:rent_car/presentation/pages/car_list_screen.dart';

class HomeBloc extends StatelessWidget {
  const HomeBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeViewModel, HomeStates>(
      builder: (context,state){
        if(state is InitialState){
          return CarListScreen();
        }
        return const Center(child: CircularProgressIndicator(),);
      },
      listener: (context, state) {
        if(state is NavigateToCarScreenDetailsState){
          context.go(AppRouter.carDetailsPath);
        }
      },
    );
  }
}
