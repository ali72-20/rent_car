import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_car/core/app_routes.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/app_images.dart';

class MapCard extends StatefulWidget {
  const MapCard({super.key});

  @override
  State<MapCard> createState() => _MapCardState();
}

class _MapCardState extends State<MapCard> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation = Tween<double>( begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener((){setState(() {

      });});
    _controller!.forward();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GestureDetector(
        onTap: (){
          context.go(AppRouter.mapDetailPath);
        },
        child: Container(
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: AppColors.black12,
                    blurRadius: 10,
                    spreadRadius: 5
                ),
              ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Transform.scale(
              scale: _animation!.value,
              alignment: Alignment.center,
              child: Image.asset(AppImages.maps),
            ),
          ),
        ),
      ),
    );
  }
}
