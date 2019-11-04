import 'package:flutter/material.dart';

class ThirdPageArgs {
  final String productName;
  final double price;

  ThirdPageArgs({
    @required this.productName,
    @required this.price,
  });
}

class ThirdPage extends StatelessWidget {
  final ThirdPageArgs args;

  ThirdPage(this.args);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              args.productName,
              style: Theme.of(context).textTheme.display2,
            ),
            Text(
              args.price.toString(),
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
    );
  }
}
