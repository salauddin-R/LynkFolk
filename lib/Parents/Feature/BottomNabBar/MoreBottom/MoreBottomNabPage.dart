import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/ExtraPage/ErrorPage.dart';
import '../../../core/utils/colorClass.dart';
import '../../HomeSection/presentation/Screen/AiSupport.dart';
import '../../HomeSection/presentation/Screen/HomePage.dart';
import '../../LibrarySection/presentation/screen/ResourceLibrary.dart';
import '../../ProfileSection/presentation/Screen/profile.dart';
import 'MoreBottomNapGetX.dart';

class MoreBottomNabPage extends StatelessWidget {
  MoreBottomNabPage({super.key});

  final MoreBottomNapGetX controller = Get.put(MoreBottomNapGetX());

  final List<Widget> pages = [
    const ResourceLibrary(),
    const ErrorPage(),
    const PrfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoreBottomNapGetX>(
      builder: (_) {
        return Scaffold(
          body: IndexedStack(index: controller.currentIndex, children: pages),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: color.fellingColor,
            unselectedItemColor: color.Black,
            currentIndex: controller.currentIndex,
            //showSelectedLabels: true,
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            onTap: (index) {
              controller.valueChange(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.local_library_outlined),
                label: "Library",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_outlined),
                label: "Challenge",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
