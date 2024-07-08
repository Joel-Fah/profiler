import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profiler/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                "Hello , I'm finnally here. Let's flutterise",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor.shade900
              )
            ),
            Gap(20.0),
            ElevatedButton(onPressed: (){}, child: Text('Hall meine Freunde', style: TextStyle(color: Colors.white),)),
            Image.asset(logo)
          ],
        ),
      ),
    );
  }
}
