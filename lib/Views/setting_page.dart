import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});
  final String title;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool Switchvalue = false;
  double slidervalue = 0.0;
  bool? checkBoxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Switch(
              value: Switchvalue,
              onChanged: (value) {
                setState(() {
                  Switchvalue = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text('listtile'),
              value: Switchvalue,
              onChanged: (value) {
                setState(() {
                  Switchvalue = value;
                });
              },
            ),
            Slider(
              value: slidervalue,
              onChanged: (double value) => slidervalue,
            ),
            Checkbox(
              value: checkBoxvalue,
              onChanged: (bool? value) {
                setState(() {
                  checkBoxvalue = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      FilledButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("snack Bar"),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        },
                        child: Text("snack bar"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Alert Dialog"),
                                actions: [
                                  FilledButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("close"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text("AlertDialog"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
