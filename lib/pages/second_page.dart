import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String productName;
  final double price;

  SecondPage({
    @required this.productName,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              productName,
              style: Theme.of(context).textTheme.display2,
            ),
            Text(
              price.toString(),
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
    );
  }
}
