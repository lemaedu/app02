import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  // const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
