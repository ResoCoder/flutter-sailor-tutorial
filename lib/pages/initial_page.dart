import 'package:flutter/material.dart';

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
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          SecondPage(price: 2000, productName: 'Laptop 2nd Gen'),
    ));
  }

  void navigateToThird(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ThirdPage(
        ThirdPageArgs(
          price: 3000,
          productName: 'Laptop 3rd Gen',
        ),
      ),
    ));
  }
}
