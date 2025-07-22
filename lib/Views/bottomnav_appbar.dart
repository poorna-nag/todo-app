import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/notifire.dart';

class BottomnavAppbar extends StatefulWidget {
  const BottomnavAppbar({super.key});

  @override
  State<BottomnavAppbar> createState() => _BottomnavAppbarState();
}

class _BottomnavAppbarState extends State<BottomnavAppbar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifire,
      builder: (context, selectedpage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "HOME"),
            NavigationDestination(icon: Icon(Icons.person), label: "Person"),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifire.value = value;
          },
          selectedIndex: selectedpage,
        );
      },
    );
  }
}
