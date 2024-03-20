import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: IconButton(
              onPressed: () {
                debugPrint("navigate back");
              },
              icon: const Icon(Icons.chevron_left, color: Colors.white),
              tooltip: 'Back',
              padding: const EdgeInsets.all(0),
              iconSize: 20,
            ),
          ),
        ),
      ),
      title: const Text('UV App'),
      centerTitle: true,
      backgroundColor: Colors.red,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: IconButton(
                onPressed: () {
                  debugPrint("filter action");
                },
                icon: const Icon(Icons.filter_list,
                    color: Colors.white), // Use filter icon
                tooltip: 'Filter',
                padding: const EdgeInsets.all(0),
                iconSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
