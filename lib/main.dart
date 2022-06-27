import 'package:attendance/app.dart';
import 'package:attendance/core/util/color_palettes.dart';
import 'package:attendance/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        primarySwatch: ColorPalette.primary,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: ColorPalette.darkColor,
          ),
          bodyText2: TextStyle(
            color: ColorPalette.darkColor,
          ),
        ),
        scaffoldBackgroundColor: ColorPalette.background,
      ),
      debugShowCheckedModeBanner: false,
      home: //
          const SignInScreen(),
      // const App(),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
    );
  }
}
