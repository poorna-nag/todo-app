import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/wellcome_page.dart';
import 'package:flutter_application_2/widgets/hero_widget.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
   int count = 0;
     void increment(){
      setState(() {
        count++;
      });
     }
      void dicrement(){
        setState(() {
          count--;
        });
      }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroWidget(),
        Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WellcomePage();
                      },
                    ),
                  );
                },
                icon: Text("Log_Out"),
                
              ),
            ],
          ),
        ),
        Column(
        children: [
           Text("$count"),
          IconButton(onPressed: increment, icon: Text('+')),
          IconButton(onPressed: dicrement, icon: Text('-'))
        ],
      ),
      ],
    );
    
  }
}
