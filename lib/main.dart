import 'package:flutter/material.dart';
import 'package:untitled20/screens/onboarding.dart';
import 'package:untitled20/screens/splash_first.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashLogo(),
    );
  }
}
