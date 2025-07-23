import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/widgettree.dart';
import 'package:flutter_application_2/widgets/notifire.dart';

void main() {
  runApp(const MainApp());
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
          home: WidgetTree(),
        );
      },
    );
  }
}
