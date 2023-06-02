import 'package:flutter/material.dart';
import 'package:untitled20/screens/onboarding.dart';
import 'package:untitled20/utils/colors.dart';
import 'package:untitled20/utils/icons.dart';

class SecondSplash extends StatefulWidget {
  const SecondSplash({Key? key}) : super(key: key);

  @override
  State<SecondSplash> createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoard(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColors.c_E5E5E5,
      body: Center(
        child: Image.asset(
          MyIcons.splash2,
          height: height * (132 / 812),
          width: width * (96 / 375),
        ),
      ),
    );
  }

  _navigateToSecondSplashScreen(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoard(),
        ));
  }
}
