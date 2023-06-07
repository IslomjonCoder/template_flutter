import 'package:flutter/material.dart';
import 'package:untitled20/widget/tile.dart';

import '../../repository/cars.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default AppBar Text'),
      ),
      body: ListView(
        children: [
          for (var i = 0; i < Cars.cars.length; i++) MyCard(model: Cars.cars[i])
        ],
      ),
    );
  }
}
