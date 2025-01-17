import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_car/core/app_routes.dart';
import 'package:rent_car/core/di/di.dart';
import 'package:rent_car/core/utilities/app_colors.dart';
import 'package:rent_car/core/utilities/app_images.dart';
import 'package:rent_car/presentation/manager/on_boaring_managers/on_boarding_actions.dart';
import 'package:rent_car/presentation/manager/on_boaring_managers/on_boarding_states.dart';
import '../../../../core/utilities/styles.dart';
import '../manager/on_boaring_managers/on_boarding_view_model.dart';

class OnBoarding extends StatelessWidget {

   OnBoarding({super.key});


  final viewModel = getIt.get<OnBoardingViewModel>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => viewModel,
      child: BlocListener<OnBoardingViewModel, OnBoardingStates>(
        listener: (context,state){
          if(state is NavigateToHomeScreenState){
            context.go(AppRouter.homePath);
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.onBoarding,
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: BounceInLeft(
                  duration: const Duration(milliseconds: 1900),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.onBoaring),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1900),
                      child: Text(
                        "${AppLocalizations.of(context)!.premiumCars}\n"
                        "${AppLocalizations.of(context)!.enjoyTheLuxury}",
                        style: Styles.style32,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1900),
                      child: Text(
                        "${AppLocalizations.of(context)!.premiumAndPrestigeCarDailyRental}\n${AppLocalizations.of(context)!.experienceTheThrillAtALowerPrice}",
                        style: Styles.style16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: SizedBox(
                        width: 320,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {
                            viewModel.doAction(NavigateToHomeScreenAction());
                          },
                          style: ElevatedButton.styleFrom(
                              foregroundColor: AppColors.black,
                              backgroundColor: AppColors.white),
                          child: Text(
                            AppLocalizations.of(context)!.letsGo,
                            style: Styles.style16
                                .copyWith(fontWeight: FontWeight.bold,color: AppColors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      )
    );
  }
}
