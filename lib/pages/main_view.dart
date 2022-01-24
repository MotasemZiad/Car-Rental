import 'package:badges/badges.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:car_rental/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeView(),
          SearchView(),
          NotificationsView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: ValueBuilder<int?>(
        initialValue: 0,
        builder: (snapshot, updater) => Container(
          color: Colors.grey[200],
          child: BubbleBottomBar(
            opacity: 0.2,
            currentIndex: snapshot,
            onTap: (tab) {
              controller.pageController.animateToPage(
                tab!,
                duration: controller.animationDuration,
                curve: Curves.ease,
              );
              updater(tab);
            },
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
            elevation: 8.0,
            hasInk: true,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                icon: const Icon(
                  LineIcons.home,
                  color: Colors.black54,
                ),
                activeIcon: const Icon(LineIcons.home),
                backgroundColor: kPrimaryColor,
                title: const Text('Home'),
              ),
              BubbleBottomBarItem(
                icon: const Icon(
                  LineIcons.search,
                  color: Colors.black54,
                ),
                activeIcon: const Icon(LineIcons.search),
                backgroundColor: kPrimaryColor,
                title: const Text('Search'),
              ),
              BubbleBottomBarItem(
                icon: Badge(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 5.0),
                  animationType: BadgeAnimationType.scale,
                  animationDuration: const Duration(milliseconds: 200),
                  badgeContent: const Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  child: const Icon(
                    LineIcons.bell,
                    color: Colors.black54,
                  ),
                ),
                activeIcon: const Icon(LineIcons.bell),
                backgroundColor: kPrimaryColor,
                title: const Text('Notifications'),
              ),
              BubbleBottomBarItem(
                icon: const Icon(
                  LineIcons.userAlt,
                  color: Colors.black54,
                ),
                activeIcon: const Icon(LineIcons.user),
                backgroundColor: kPrimaryColor,
                title: const Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
