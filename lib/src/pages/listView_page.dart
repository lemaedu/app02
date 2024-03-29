import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  //Objeto que permite controllar el Scroll
  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumero = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          //llega al final y agrega
          _scrollController.position.maxScrollExtent) {
        //_agregar10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),
        body: Stack(
          children: <Widget>[
            _crearLista(),
            _crearLoading(),
          ],
        ));
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumero.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumero[index];
          //Se usa FadeInImage para cargar recurso externo
          return FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage('https://picsum.photos/400/300?image=$imagen'),
          );
        },
      ),
    );
  }

  Future obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumero.clear();
      _ultimoItem++;
      _agregar10();
    });
    return Future.delayed(duration);
  }

  _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
    }
    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
    //con parentesis se ejecuta en ese instante
  }

  void respuestaHTTP() {
    //cuando termina de cargar
    _isLoading = false;
    //para indicar que hay mas registros
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(microseconds: 500));
    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
              ],
            ),
            SizedBox(
              height: 15.0,
            )
          ]);
    } else {
      return Container();
    }
  }
}
