import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  // const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlert(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue[800], shape: StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        //Permite cerrar la ventana al hacer clic afuera del dialog
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: Text('Titulo'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Contenido de la ventana'),
                  FlutterLogo(
                    size: 75.0,
                  )
                ],
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, shape: StadiumBorder()),
                ),
                ElevatedButton(
                  child: Text('Ok'),
                  onPressed: () => {Navigator.of(context).pop()},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[800], shape: StadiumBorder()),
                ),
              ]);
        });
  }
}
