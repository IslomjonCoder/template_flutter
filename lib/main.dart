import 'package:flutter/material.dart';
import 'package:untitled20/screens/account/account.dart';
import 'package:untitled20/screens/change_language/select_language.dart';
import 'package:untitled20/screens/profile/profile.dart';
import 'package:untitled20/screens/settings/setting.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:localization/localization.dart';
import 'screens/about/about.dart';
import 'screens/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

String languageCode = 'ru';
String languageUniCode = 'RU';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: App(),
    supportedLocales: [
      Locale('en', 'EN'),
      Locale('de', 'DE'),
      Locale('uz', 'UZ'),
      Locale('ru', 'RU')
    ],
    path: 'assets/translations',
    startLocale: Locale(languageCode, languageUniCode),
  ));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: HomeScreen(),
    );
  }
}
