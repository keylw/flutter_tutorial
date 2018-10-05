import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingproduct;

  ProductManager(this.startingproduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print('[product widget] constructer');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingproduct);
    super.initState();
  }

  @override
  Widget build(BuildContext contex) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _products.add('Advance Food Tester');
              print(_products);
            });
          },
          child: Text('add Product'),
        ),
      ),
      Products(_products)
    ]);
  }
}
