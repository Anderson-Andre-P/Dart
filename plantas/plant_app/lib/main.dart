import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      // theme: ThemeData(
      // scaffoldBackgroundColor: kBackgroundColor,
      // primaryColor: kPrimaryColor,
      // primarySwatch: kPrimaryColor,
      // textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      theme: ThemeData(
          // primaryColor: Colors.green.shade100,
          // primarySwatch: MaterialColors,
          primaryColor: const Color(0xff0C9869)),
      home: HomeScreen(),
    );
  }
}
