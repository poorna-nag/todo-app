import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/home_page.dart';
import 'package:flutter_application_2/Views/person_page.dart';
import 'package:flutter_application_2/Views/bottomnav_appbar.dart';
import 'package:flutter_application_2/widgets/notifire.dart';

List<Widget> pages = [HomePage(), PersonPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
        backgroundColor: Colors.amber,
        // leading: Icon(Icons.whatshot_sharp),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifire.value = !isDarkModeNotifire.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifire,
              builder: (context, isDarkMood, child) {
                return Icon(isDarkMood ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifire,
        builder: (context, selectedpage, child) {
          return pages.elementAt(selectedpage);
        },
      ),
      bottomNavigationBar: BottomnavAppbar(),
    );
  }
}
