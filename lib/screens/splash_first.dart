import 'package:flutter/material.dart';
import 'package:untitled20/screens/splash_second.dart';
import 'package:untitled20/utils/colors.dart';
import 'package:untitled20/utils/icons.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SecondSplash(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // _navigateToSecondSplashScreen(context);
    return Scaffold(
      backgroundColor: MyColors.c_407AFF,
      body: Center(
        child: Image.asset(
          MyIcons.splash1,
          height: height * (132 / 812),
          width: width * (96 / 375),
        ),
      ),
    );
  }

  _navigateToSecondSplashScreen(BuildContext context) async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SecondSplash(),
          ));
    });
  }
}
