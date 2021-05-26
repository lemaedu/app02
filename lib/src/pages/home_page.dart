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
    print(menuProvider.opciones);
    return ListView(
      children: _listaItems(),
    );
  }

  _listaItems() {
    return [
      ListTile(title: Text('Titulo 1')),
      Divider(),
      ListTile(title: Text('Titulo 2')),
      Divider(),
      ListTile(title: Text('Titulo 3')),
      Divider(),
      ListTile(title: Text('Titulo 4')),
      Divider(),
      ListTile(title: Text('Titulo 5')),
    ];
  }
}
