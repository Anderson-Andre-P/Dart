import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var title;

  @override
  void initState() {
    super.initState();
    title = 'Exercício';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$title',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  title = 'Titul o novo';
                });
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.greenAccent),
              label: 'Adicionar',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove, color: Colors.redAccent),
              label: 'Remover',
              backgroundColor: Colors.red),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              print("Adicionou");
              break;
            case 1:
              print("Removeu");
              break;
          }
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                // Image.asset('assets/img.png'),
                // Image.asset('assets/img.png'),
                // Image.asset('assets/img.png'),
                Padding(padding: EdgeInsets.all(10)),
                Text("Texto 1"),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
}
