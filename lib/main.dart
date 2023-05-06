import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funitureapp/constant.dart';
import 'package:funitureapp/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          // here we set DM Sans as our default fonts
          //now we also apply out text color to all flutter textTheme
          textTheme:
              GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const HomeScreen(),
    );
  }
}