import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Column(
        children: [
          Text("Hero Widget", style: TextStyle(fontWeight: FontWeight.bold)),
         SizedBox(height: 20,),
          Image.asset('assets/images/lottie.png'),
        ],
      ),
    );
  }
}
