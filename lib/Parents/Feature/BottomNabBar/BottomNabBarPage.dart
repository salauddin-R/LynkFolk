import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utils/colorClass.dart';
import '../HomeSection/presentation/Screen/AiSupport.dart';
import '../HomeSection/presentation/Screen/HomePage.dart';
import '../ToolSection/presentation/Screen/SupportTools.dart';
import '../../core/utils/ExtraPage/ErrorPage.dart';
import 'MoreBottom/MoreBottomNabPage.dart';
import 'bottomGetX.dart';

class BottomNabBarPage extends StatelessWidget {
  BottomNabBarPage({super.key});
  final BottomGetx controller = Get.put(BottomGetx());

  final List<Widget> pages = [
    const HomePage(),
    const AiSupportPage(),
    const ErrorPage(),
    const SupportTools(),
     MoreBottomNabPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomGetx>(
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: controller.currentIndex,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: color.DarkWhite,
            selectedItemColor: color.fellingColor,
            unselectedItemColor: color.Black,
            currentIndex: controller.currentIndex,
            showSelectedLabels: true,
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            onTap: (index) {
              controller.valueChange(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.messenger_outline), label: "AI Guide"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.edit_note), label: "Journal"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.auto_fix_high), label: "Tools"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu), label: "More"),
            ],
          ),
        );
      },
    );
  }
}
