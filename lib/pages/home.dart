import 'package:flutter/material.dart';
import '../components/app_bar_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      // body: _body(),
      // bottomNavigationBar: _bottomNavigation(),
    );
  }
}
  // AppBar _appBar() {
  //   return AppBar(
  //     title: Text('Hello World'),
  //   );
  // }

//   Widget _body() {
//     return const Center(
//       child: Text('Hello World'),
//     );
//   }

//   BottomNavigationBar _bottomNavigation() {
//     return BottomNavigationBar(
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.search),
//           label: 'Search',
//         ),
//       ],
//     );
//   }
// }
