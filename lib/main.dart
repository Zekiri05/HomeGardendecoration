import 'package:flutter/material.dart';

import 'user_interface/garden_products_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'HomeGardenScreen',
      home: GardenProductsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
