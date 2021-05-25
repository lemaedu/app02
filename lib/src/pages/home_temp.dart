import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete'];
  //const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(
        //children: _creatItems(),
        children: _createItemCorta(),
      ),
    );
  }

  List<Widget> _creatItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidgets = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidgets)..add(Divider());
    }
    return lista;
  }

  List<Widget> _createItemCorta() {
    //Regresa una nueva Lista
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + ','),
            subtitle: Text("Subtítulo"),
            //Icono al Inicio del witwest
            leading: Icon(Icons.account_balance_wallet_outlined),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
