import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/utils/constants.dart';

class SkillTestFeed extends StatelessWidget {
  const SkillTestFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 20.0,
            ),
            height: Get.height / 3,
            width: Get.width - 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: borderRadius,
              boxShadow: [primaryShadow],
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    LucideIcons.flaskConical,
                    color: seedColor,
                    size: 36.0,
                  ),
                  Gap(8.0),
                  Text(
                    "Profiler labs",
                    style: TextStyle(
                      color: seedColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Gap(24.0),
                  Text(
                    "Know how much you\nmatch with a startup",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(30.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0,),
                    decoration: BoxDecoration(
                      borderRadius: borderRadius * 2,
                      color: seedColor.withOpacity(0.1)
                    ),
                    child: Text(
                      "Coming soon...",
                      style: TextStyle(color: seedColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
