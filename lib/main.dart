import 'package:flutter/material.dart';

import 'anaekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Akıllı İlaç Kutusu Uygulaması",
      home: Iskele(),
    ); //çatı
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Akıllı İlaç Kutusu")),

      body: AnaEkran(),
    ); //alt ayakları iskele
  }
}
