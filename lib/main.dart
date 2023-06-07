import 'package:flutter/material.dart';
import 'package:untitled20/screens/detail.dart';

import 'repository/cars.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
