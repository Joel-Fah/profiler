import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:profiler/utils/constants.dart';
import 'package:profiler/views/screens/auth/login.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  static String routeName = '/onboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            onboardBg,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find the right profile right away!",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Gap(8.0),
                Text(
                  "Do more with less amount of time. Find the right employee/recruiter in just scrolls and views.",
                  style: TextStyle(fontSize: 16.0),
                ),
                Gap(36.0),
                SizedBox(
                  width: Get.width,
                  height: 48.0,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => LoginPage()),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
