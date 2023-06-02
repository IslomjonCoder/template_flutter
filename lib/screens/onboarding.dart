import 'package:flutter/material.dart';
import 'package:untitled20/main.dart';
import 'package:untitled20/models/models.dart';
import 'package:untitled20/screens/home/home_screen.dart';
import 'package:untitled20/widgets/onboard.dart';
import 'package:untitled20/utils/colors.dart';
import 'package:untitled20/utils/icons.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  List data = Data.views;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Spacer(),
        Expanded(
          flex: 5,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              for (int i = 0; i < Data.views.length; i++)
                OnBoard1(
                  title: data[i][1],
                  subtitle: data[i][2],
                  url: data[i][0],
                  index: i,
                )
            ],
            // children: [OnBoard1()],
          ),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          child: Text('Get Started'),
          style: ButtonStyle(
              minimumSize:
                  MaterialStatePropertyAll<Size>(Size(width * (327 / 375), 46)),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23)))),
        ),
        Spacer(),
      ],
    ));
  }
}
