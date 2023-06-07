import 'package:flutter/material.dart';
import 'package:untitled20/screens/detail.dart';

import '../models/car.dart';

class MyCard extends StatelessWidget {
  MyCard({Key? key, required this.model}) : super(key: key);
  Car model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CarDetail(car: model),
          ),
        );
      },
      child: Container(
        height: 60,
        color: Colors.grey.shade200,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: model.manufacture,
                        style: TextStyle(fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(text: ' '),
                          TextSpan(text: model.model)
                        ]),
                  ),
                  Text(model.year.toString())
                ]),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
