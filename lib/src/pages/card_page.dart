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
        children: <Widget>[
          _cardTipo1(),
          //Añade espacion entre los dos elementos
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
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

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.add_box, color: Colors.blue),
            title: Text('Titulo de la Targeta'),
            subtitle: Text("Aqui va el subtitulo de la tarjeta"),
          ),
          //witgest para loadings para imagenes
          FadeInImage(
            image: NetworkImage(
                'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 250.00,
            fit: BoxFit.cover,
          ),

          //Cada vez que se pone recursos estaticos es recomendable hacer un fullrestart

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Texto de Container de flutter'),
          )
        ],
      ),
    );
  }
}
