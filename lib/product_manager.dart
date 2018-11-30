import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct){
    print('[Products Manager] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    print('[Products Manager] State');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    print('[Products Manager State] initState');
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Products Manager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Manager State] build');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
