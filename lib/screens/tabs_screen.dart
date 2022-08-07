import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:demo_app/screens/product_register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/chat_list_screen.dart';
import '../screens/my_page_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
      'title': '체인마켓',
      'actions': <Widget>[
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ],
      'isFloating': true,
    },
    {
      'page': ChatListScreen(),
      'title': '채팅',
      'actions': <Widget>[],
      'isFloating': false,
    },
    {
      'page': MyPageScreen(),
      'title': '마이페이지',
      'actions': <Widget>[
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ),
      ],
      'isFloating': false,
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black26,
          ),
        ),
        title: Text(
          _pages[_selectedPageIndex]['title'] as String,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        actions: _pages[_selectedPageIndex]['actions'] as List<Widget>,
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.chat_bubble_outline_rounded,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline_sharp,
            color: Colors.white,
          ),
        ],
        inactiveIcons: [
          Text(
            "홈",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jalnan',
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Theme.of(context).primaryColor,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
          ),
          Text(
            "채팅",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jalnan',
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Theme.of(context).primaryColor,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
          ),
          Text(
            "마이페이지",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jalnan',
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Theme.of(context).primaryColor,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
          ),
        ],
        color: Colors.white, //무시됨.
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).secondaryHeaderColor,
          ],
        ),
        height: 60,
        circleWidth: 60,
        initIndex: _selectedPageIndex,
        onChanged: _selectPage,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
      ),
      floatingActionButton:
          _getFAB(context, _pages[_selectedPageIndex]['isFloating'] as bool),
    );
  }
}

Widget? _getFAB(BuildContext context, bool isFloating) {
  if (isFloating) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      foregroundColor: Colors.white,
      onPressed: () => Navigator.of(context).pushNamed(
        ProductRegisterScreen.routeName,
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
