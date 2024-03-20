import 'package:flutter/material.dart';

class BottomNavigationCustom extends StatefulWidget {
  final int selectedIndex;
  final void Function(int index) onItemTapped;

  const BottomNavigationCustom({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About',
        ),
      ],
      currentIndex: widget.selectedIndex, // Use the widget's selectedIndex
      onTap: widget.onItemTapped, // Use the widget's onItemTapped callback
    );
  }
}