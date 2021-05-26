import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    cargaData();
  }

  Future<List<dynamic>> cargaData() async {
    //rootBundle.loadString('data/menu_opts.json').then((data) {
    final resp =
        await rootBundle.loadString('data/menu_opts.json').then((data) {
      // print(data);
      Map dataMap = json.decode(data);
      //print(dataMap);
      //print(dataMap['nombreApp']);
      print(dataMap['rutas']);
      opciones = dataMap['rutas'];
      return opciones;
    });
  }
}

//Se va utilizar la instancia
final menuProvider = new _MenuProvider();
