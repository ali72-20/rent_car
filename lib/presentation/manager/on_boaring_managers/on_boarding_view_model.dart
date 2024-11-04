import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'on_boarding_actions.dart';
import 'on_boarding_states.dart';

@injectable
class OnBoardingViewModel extends Cubit<OnBoardingStates>{

  @factory
  OnBoardingViewModel(): super(InitialState());


  void doAction(OnBoardingActions action){
    switch (action) {
      case NavigateToHomeScreenAction():
        emit(NavigateToHomeScreenState());
    }
  }

}