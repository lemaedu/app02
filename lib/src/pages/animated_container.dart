import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _whidth = 50.0;
  double _hight = 50.0;
  Color _color = Colors.redAccent;
  BorderRadiusGeometry _borderRaduis = BorderRadius.circular(8.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animación'),
      ),
      body: Center(
          //child: Container(
          child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: _whidth,
        height: _hight,
        decoration: BoxDecoration(
          borderRadius: _borderRaduis,
          color: _color,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      //_whidth += 50.0;
      _whidth = random.nextInt(300).toDouble();
      //_hight += 50.0;
      _hight = random.nextInt(300).toDouble();
      //_color=Color.accents;
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      //Para que los bordes sea un random
      _borderRaduis = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
