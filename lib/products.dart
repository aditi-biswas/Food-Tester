import 'package:flutter/material.dart';

class Products extends StatelessWidget
{
  final List<String> prod;
  
  Products(this.prod);
  
  @override
  Widget build(BuildContext context)
  {
    return (Column(
      children: prod
        .map(
          (element) => Card(
            child:Column(
              children: <Widget>[
                Image.asset('assets/donuts.png',height: 300,width: 300,),
                Text(element)
              ],
            ),
          ),
        )
      .toList(),
    )
    );
  }
}
            