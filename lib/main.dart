import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/catalog_page.dart';

import 'package:flutter_application_2/Views/wellcome_page.dart';
import 'package:flutter_application_2/widgets/notifire.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
     ChangeNotifierProvider(create: (context) => Cart(), child:const MainApp(),)
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifire,
      builder: (context, isDarkMood, child) {
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMood ? Brightness.dark : Brightness.light,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: WellcomePage(),
        );
      },
    );
  }
}
