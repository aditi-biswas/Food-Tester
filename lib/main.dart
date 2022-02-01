
import 'package:flutter/material.dart';

import './product_manager.dart';

void main()
{
  runApp(MyApp());
}



class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.deepOrange,
        brightness: Brightness.light,
        accentColor: Colors.deepPurple),
      home: Scaffold(
        backgroundColor: Colors.orange.shade300,
        appBar: AppBar(
          title: Text('easylist'),
        ),
        body:SingleChildScrollView(child: Center(child: ProductsManager('food tester'))),
        ),
      );
    
  }
}         

