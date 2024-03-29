import 'package:app02/src/pages/input_page.dart';
import 'package:app02/src/pages/listView_page.dart';
import 'package:flutter/material.dart';
import 'package:app02/src/pages/alert_page.dart';
import 'package:app02/src/pages/avatar_page.dart';
import 'package:app02/src/pages/home_page.dart';
import 'package:app02/src/pages/card_page.dart';
import 'package:app02/src/pages/animated_container.dart';
import 'package:app02/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
