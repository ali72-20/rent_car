import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rent_car/presentation/manager/home_managers/home_actions.dart';
import 'package:rent_car/presentation/manager/home_managers/home_states.dart';


@injectable
class HomeViewModel extends Cubit<HomeStates>{
  @factory
  HomeViewModel() :super(InitialState());


  void doAction(HomeActions action){
    switch (action) {
      case NavigateToCarScreenDetailsAction():
        emit(NavigateToCarScreenDetailsState(action.car));
    }
  }
}