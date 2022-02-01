import 'package:flutter/material.dart';

import './products.dart';
import './products_control.dart';
class ProductsManager extends StatefulWidget
{
  final String startingProduct;

  ProductsManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}


class _ProductsManagerState extends State<ProductsManager>
{
  List<String> _products= [];

  void _addProduct(String product)
  {
    setState((){
      _products.add(product);
    });
  }

  @override 

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  Widget build (BuildContext context)
  {
    return Column(
          children:<Widget>[
            Container(
              margin:EdgeInsets.all(10.0),
              child:ProductsControl(_addProduct),
            ),
            Products(_products)
          ],
       );
  }
}