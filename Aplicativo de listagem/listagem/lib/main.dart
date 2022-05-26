import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(),
        home: const HomePage(title: 'Lista de nomes'),
        debugShowCheckedModeBanner: false,
      );
}
