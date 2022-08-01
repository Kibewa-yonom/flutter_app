import 'package:demo_app/screens/product_detail_screen.dart';
import 'package:demo_app/screens/product_register_screen.dart';
import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';
import '../screens/sell_list_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Carrot Market Clone',
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        SellListScreen.routeName: (ctx) => SellListScreen(),
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        ProductRegisterScreen.routeName: (ctx) => ProductRegisterScreen(),
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(155, 89, 182, 1),
      ),
    ),
  );
}
