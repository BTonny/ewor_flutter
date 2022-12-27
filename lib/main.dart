import 'package:ewor_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'section_one/index.dart';

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
        headline2: Theme.of(context).textTheme.headline2?.copyWith(
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
