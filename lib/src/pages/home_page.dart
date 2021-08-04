import 'package:app02/src/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';

import 'package:app02/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
    //print(menuProvider.opciones);
    /* menuProvider.cargarData().then((opciones) {
      print('_lista');
      print(opciones);
    });
    
    return ListView(
      children: _listaItems(),
    );
    */
  }

  _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        //leading: Icon(Icons.account_circle, color: Colors.blue),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
          /*
          final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route);
          */
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
