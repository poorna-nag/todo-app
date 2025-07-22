import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/home_page.dart';
import 'package:flutter_application_2/Views/person_page.dart';
import 'package:flutter_application_2/Views/bottomnav_appbar.dart';
import 'package:flutter_application_2/widgets/notifire.dart';

List<Widget> pages = [HomePage(), PersonPage()];

class Widgettree extends StatelessWidget {
  const Widgettree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dema App"),
        backgroundColor: Colors.amber,
        // leading: Icon(Icons.whatshot_sharp),
        actions: [Icon(Icons.search), Icon(Icons.list)],
      ),
      body: ValueListenableBuilder(valueListenable: selectedPageNotifire, builder: (context, selectedpage, child) {
        return pages.elementAt(selectedpage);
      },),
      bottomNavigationBar: BottomnavAppbar(),
    );
  }
}
