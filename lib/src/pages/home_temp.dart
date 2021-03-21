import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciociones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete'
  ];
  //const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(
        children: _creatItems(),
      ),
    );
  }

  List<Widget> _creatItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciociones) {
      final tempWidgets = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidgets)..add(Divider());
    }
    return lista;
  }

  List<Widget> _creatItemCorto() {}
}
