import 'package:flutter/material.dart';
import '../components/app_bar_custom.dart';
import '../components/bottom_navbar_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      body: _body(),
      bottomNavigationBar: const BottomNavigationCustom(),
    );
  }
}

Widget _body() {
  return const Center(
    child: Text('Hello World'),
  );
}
