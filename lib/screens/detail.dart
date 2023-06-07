import 'package:flutter/material.dart';

import '../models/car.dart';

class CarDetail extends StatelessWidget {
  CarDetail({Key? key, required this.car}) : super(key: key);

  final Car car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.model),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(car.url),
            Text('Manifacture ${car.manufacture}'),
            Text('Model ${car.model}'),
            Text('Electric ${car.isElectric}')
          ],
        ),
      ),
    );
  }
}
