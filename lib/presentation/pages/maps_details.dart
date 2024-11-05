import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:rent_car/core/app_routes.dart';
import 'package:rent_car/presentation/widgets/car_details_card.dart';

import '../../domain/entities/car_entity.dart';
import '../widgets/car_map_card.dart';

class MapsDetails extends StatelessWidget {
  const MapsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              context.go(AppRouter.carDetailsPath);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(51, -0.09),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: const ['a', 'b', 'c'],
              ),
            ],
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CarMapCard()
          ),
        ],
      ),
    );
  }
}
