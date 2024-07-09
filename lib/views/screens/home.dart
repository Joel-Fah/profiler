import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/views/widgets/profiles.dart';

import '../widgets/offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _tabPages = [
      OffersFeed(),
      SizedBox(),
      ProfilesFeed(),
      SizedBox()
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(LucideIcons.lightbulb), label: "Recommended"),
      const BottomNavigationBarItem(
          icon: Icon(LucideIcons.flaskConical), label: 'SkillTest'),
      const BottomNavigationBarItem(
          icon: Icon(LucideIcons.users2), label: 'Profiles'),
      const BottomNavigationBarItem(
          icon: Icon(LucideIcons.userCircle2), label: 'Account'),
    ];

    final bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
    );

    return Scaffold(
      body: _tabPages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
