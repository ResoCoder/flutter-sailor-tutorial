import 'package:flutter/material.dart';

import '../main.dart';
import 'second_page.dart';
import 'third_page.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Go to SECOND'),
              onPressed: () => navigateToSecond(context),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Go to THIRD'),
              onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecond(BuildContext context) {
    Routes.sailor.navigate(
      '/second',
      params: {
        'price': 2000.0,
        'productName': 'Laptop 2nd Gen',
      },
    );
  }

  void navigateToThird(BuildContext context) {
    Routes.sailor.navigate(
      '/third',
      args: ThirdPageArgs(
        price: 3000,
        productName: 'Laptop 3rd Gen',
      ),
    );
  }
}
