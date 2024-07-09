import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/models/profile.dart';
import 'package:profiler/utils/constants.dart';
import 'package:profiler/views/widgets/offers.dart';

class ProfilesFeed extends StatefulWidget {
  const ProfilesFeed({super.key});

  @override
  State<ProfilesFeed> createState() => _ProfilesFeedState();
}

class _ProfilesFeedState extends State<ProfilesFeed> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: profiles.length,
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      onPageChanged: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      itemBuilder: (context, index) {
        final profile = profiles[index];

        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 20.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(profile.picture),
                  ),
                  Gap(8.0),
                  Text(
                    profile.name,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(4.0),
                  Text(
                    profile.occupation,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  Gap(16.0),
                  Text(
                    profile.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(16.0),
                  Row(
                    children: [
                      Expanded(
                        child: OfferDetailCard(
                          label: "Skills test score",
                          title: "${profile.skillTestScore.toString()}%",
                          titleFontSize: 56.0,
                          titleColor: profile.skillTestScore >= 50
                              ? successColor
                              : null,
                          icon: LucideIcons.badgeCheck,
                        ),
                      ),
                      Gap(16.0),
                      Expanded(
                        child: OfferDetailCard(
                          label: "Profile rating (/5)",
                          title: profile.rating.toString(),
                          titleFontSize: 56,
                          icon: LucideIcons.star,
                        ),
                      ),
                    ],
                  ),
                  Gap(16.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "My skill set",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Gap(8.0),
                  SizedBox(
                    width: Get.width,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: List.generate(
                          profile.skillSet.length,
                          (index) {
                            final skill = profile.skillSet[index].name;
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: borderRadius * 2),
                              child: Text(skill),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: Get.width,
                    height: 48.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "View profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 64.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: profile.rating >= 3
                                ? WidgetStateProperty.all(
                                    seedColor.withOpacity(0.1))
                                : WidgetStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            LucideIcons.hand,
                            color: profile.rating >= 3
                                ? seedColor
                                : null,
                          ),
                          tooltip: "Endorse",
                        ),
                        Text("45"),
                      ],
                    ),
                    Gap(16.0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(LucideIcons.bookmark),
                          tooltip: "Bookmark",
                        ),
                        Text("123"),
                      ],
                    ),
                    Gap(16.0),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(LucideIcons.share2),
                      tooltip: "Share",
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
