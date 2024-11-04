import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routes.dart';
import '../../manager/on_boaring_managers/on_boarding_states.dart';
import '../../manager/on_boaring_managers/on_boarding_view_model.dart';

class OnBoardingBloc extends StatelessWidget {
  const OnBoardingBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnBoardingViewModel, OnBoardingStates>(
      listener: (context, state) {
        if (state is NavigateToHomeScreenState) {
          context.go(AppRouter.homePath);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
