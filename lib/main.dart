import 'package:flutter/material.dart';
import 'package:indonesia_covid_19/providers/data.dart';
import 'package:indonesia_covid_19/screen/provinsi_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Data(), 
        child: ProvinsiScreen(),
      )
    );
  }
}