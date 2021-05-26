import 'package:flutter/material.dart';

import 'package:app02/src/pages/home_page.dart';
//import 'package:app02/src/pages/home_temp.dart';

//mateapp comando para iniciar
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        //Oculta el baner Debug
        debugShowCheckedModeBanner: false,
        //home: HomePageTemp());
        home: HomePage());
  }
}
