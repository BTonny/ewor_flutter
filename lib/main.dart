import 'package:ewor_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'landing/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ewor Flutter',
      theme: _buildTheme(context, Brightness.light),
      home: const Index(),
    );
  }

  ThemeData _buildTheme(BuildContext context, Brightness brightness) {
    var baseTheme =
        ThemeData(brightness: brightness, primaryColor: Colors.black);
    return baseTheme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
            secondary: const Color(0xffff6900),
            primary: Colors.black,
          ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.heeboTextTheme(baseTheme.textTheme).copyWith(
        headline1: Theme.of(context).textTheme.headline1?.copyWith(
              color:
                  brightness == Brightness.light ? Colors.black : Colors.white,
            ),
        headline4: Theme.of(context).textTheme.headline4?.copyWith(
              color:
                  brightness == Brightness.light ? Colors.black : Colors.white,
            ),
        headline6: Theme.of(context).textTheme.headline6?.copyWith(
              color:
                  brightness == Brightness.light ? Colors.black : Colors.white,
            ),
      ),
    );
  }
}

class ScreenSize {
  static const sizeDesktop = 1200;
  static const sizeMobile = 600;
  static const sizeTablet = 900;

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobile(BuildContext context) {
    return width(context) < sizeMobile;
  }

  static bool isTablet(BuildContext context) {
    return width(context) >= sizeMobile && width(context) < sizeTablet;
  }

  static bool isDesktop(BuildContext context) {
    return width(context) >= sizeTablet;
  }
}
