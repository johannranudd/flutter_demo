import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/products.dart';
import './pages/about.dart';
import './components/custom_app_bar.dart'; 
import './components/custom_bottom_navigation_bar.dart'; 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [Home(), Products(), About()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
        ),
      ),
    );
  }
}