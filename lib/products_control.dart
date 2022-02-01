import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget
{
  final Function addProduct;

  ProductsControl(this.addProduct);

  Widget build (BuildContext context)
  {
    return RaisedButton(
                color:Theme.of(context).primaryColor,
                onPressed:(){
                  addProduct('donuts');
                },
                child:Text('add product'),
    );
  }
}