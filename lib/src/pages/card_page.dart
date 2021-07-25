import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[_cardTipo1()],
      ),
    );
  }

  //Creamos el metodo _cardTipo1()
  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo de la Targeta'),
            subtitle: Text("Aqui va el subtitulo de la tarjeta"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
