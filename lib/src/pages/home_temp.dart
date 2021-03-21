import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('LIST TITLE'),
          ),
          Divider(),
          ListTile(
            title: Text('LIST TITLE'),
          ),
          Divider(),
          ListTile(
            title: Text('LIST TITLE'),
          )
        ],
      ),
    );
  }
}
