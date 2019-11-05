import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

import 'pages/initial_page.dart';
import 'pages/second_page.dart';
import 'pages/third_page.dart';

void main() {
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: InitialPage(),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
    );
  }
}

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
        name: '/initial',
        builder: (context, args, params) {
          return InitialPage();
        },
      ),
      SailorRoute(
        name: '/second',
        builder: (context, args, params) {
          return SecondPage(
            productName: params.param('productName'),
            price: params.param<double>('price'),
          );
        },
        params: [
          SailorParam(name: 'productName', isRequired: true),
          SailorParam(name: 'price', defaultValue: 100.0),
        ],
      ),
      SailorRoute(
        name: '/third',
        builder: (context, args, params) {
          return ThirdPage(args);
        },
        defaultTransitions: [
          SailorTransition.slide_from_bottom,
          SailorTransition.slide_from_left,
          SailorTransition.zoom_in,
        ],
        defaultTransitionCurve: Curves.easeInCirc,
        defaultTransitionDuration: Duration(seconds: 2),
      ),
    ]);
  }
}
