import 'package:demo_app/dummy_data.dart';
import 'package:demo_app/models/goods.dart';
import 'package:demo_app/models/user.dart';
import 'package:demo_app/screens/history_screen.dart';
import 'package:demo_app/screens/product_detail_screen.dart';
import 'package:demo_app/screens/product_register_screen.dart';
import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';
import '../screens/sell_list_screen.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrot Market Clone',
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        SellListScreen.routeName: (ctx) => SellListScreen(),
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        ProductRegisterScreen.routeName: (ctx) => ProductRegisterScreen(),
        HistoryScreen.routename: (ctx) => HistoryScreen(),
      },
      theme: ThemeData(
        // primaryColor: Color.fromRGBO(155, 89, 182, 1),
        primaryColor: Color(0xff513252),
        focusColor: Color(0xffCA4E79),
        secondaryHeaderColor: Color(0xffFFC18E),
        dividerColor: Color(0xff7A4069),
      ),
    );
  }
}
