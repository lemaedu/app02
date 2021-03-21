import 'package:app02/src/pages/home_temp.dart';
import 'package:flutter/material.dart';

//mateapp comando para iniciar
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        //Oculta el baner Debug
        debugShowCheckedModeBanner: false,
        home: HomePageTemp());
  }
}
