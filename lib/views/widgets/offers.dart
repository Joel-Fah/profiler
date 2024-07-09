import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/models/offer.dart';
import 'package:profiler/utils/constants.dart';

class OffersFeed extends StatefulWidget {
  const OffersFeed({
    super.key,
  });

  @override
  State<OffersFeed> createState() => _OffersFeedState();
}

class _OffersFeedState extends State<OffersFeed> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: offers.length,
      onPageChanged: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      itemBuilder: (context, index) {
        final Offer offer = offers[index];

        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 20.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: successColor.withOpacity(0.1),
                      borderRadius: borderRadius,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        children: [
                          Text(
                            offer.minPrice + ' ~ ' + offer.maxPrice + '/month',
                            style: TextStyle(
                              color: successColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(16.0),
                  Text(
                    offer.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                        ),
                  ),
                  Gap(16.0),
                  Text(
                    offer.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(16.0),
                  SizedBox(
                    width: Get.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Wrap(
                        spacing: 8.0,
                        children: List.generate(
                          offer.skillsRequired.length,
                          (index) {
                            final skill = offer.skillsRequired[index].name;
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
                  Gap(16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: OfferDetailCard(
                          label: 'Location',
                          title: offer.location.split(' ').join('\n'),
                          icon: LucideIcons.mapPin,
                        ),
                      ),
                      Gap(16.0),
                      Expanded(
                        child: OfferDetailCard(
                          label: 'Status',
                          title: offer.status,
                          icon: LucideIcons.target,
                          titleColor: offer.status.toLowerCase() == 'available'
                              ? successColor
                              : errorColor,
                        ),
                      ),
                    ],
                  ),
                  Gap(16.0),
                  SizedBox(
                    width: Get.width,
                    child: OfferDetailCard(
                      label: 'Recruiter',
                      title: offer.employer,
                      icon: LucideIcons.briefcase,
                    ),
                  ),
                  Gap(16.0),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            LucideIcons.hourglass,
                            size: 16.0,
                            color: Theme.of(context).disabledColor,
                          ),
                          Gap(4.0),
                          Text(
                            "Expires on:",
                            style: TextStyle(
                                color: Theme.of(context).disabledColor),
                          )
                        ],
                      ),
                      Text(
                        DateFormat('EEE, d MMM yyyy')
                            .format((offer.expiryDate)),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: Get.width,
                    height: 48.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Apply to this offer",
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
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     IconButton(
                    //       style: ButtonStyle(
                    //         backgroundColor: offer.status.toLowerCase() ==
                    //                 'available'
                    //             ? WidgetStateProperty.all(
                    //                 seedColor.withOpacity(0.1))
                    //             : WidgetStateProperty.all(Colors.transparent),
                    //       ),
                    //       onPressed: () {},
                    //       icon: Icon(
                    //         LucideIcons.hand,
                    //         color: offer.status.toLowerCase() == 'available'
                    //             ? seedColor
                    //             : null,
                    //       ),
                    //       tooltip: "Endorse",
                    //     ),
                    //     Text("45"),
                    //   ],
                    // ),
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

class OfferDetailCard extends StatelessWidget {
  const OfferDetailCard({
    super.key,
    required this.label,
    required this.title,
    required this.icon,
    this.titleColor, this.titleFontSize,
  });

  final String label;
  final String title;
  final IconData icon;
  final Color? titleColor;
  final double? titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
        boxShadow: [primaryShadow],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              Text(
                label,
                style: TextStyle(
                    color: Theme.of(context).disabledColor, fontSize: 12.0),
              )
            ],
          ),
          Gap(20.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: titleFontSize ?? 16.0,
              fontWeight: FontWeight.bold,
              color: titleColor ?? null,
            ),
          ),
        ],
      ),
    );
  }
}
