import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const ListTile(
        leading: Icon(Icons.arrow_back_ios_new),
        trailing: Icon(Icons.info_outline),
      )),
      body: Column(
        children: [],
      ),
    );
  }
}
