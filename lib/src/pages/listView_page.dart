import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  //Objeto que permite controllar el Scroll
  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumero = new List();
  int _ultimoItem = 0;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _agregar10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumero.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNumero[index];
        //Se usa FadeInImage para cargar recurso externo
        return FadeInImage(
          placeholder: AssetImage("assets/jar-loading.gif"),
          image: NetworkImage("https://picsum.photos/400/300?image=$index"),
        );
      },
    );
  }

  _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
    }
    setState(() {});
  }
}
