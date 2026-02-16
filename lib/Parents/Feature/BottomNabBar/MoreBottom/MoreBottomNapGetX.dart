import 'package:get/get.dart';

class MoreBottomNapGetX extends GetxController{
  int currentIndex = 0;

  // BottomNavigationBar tap
  void valueChange(int index) {
    currentIndex = index;
    update();
  }

  // Update by section name
  void updateIndexBySection(String section) {
    switch (section) {
      case '/ResourceLibrary':
        currentIndex = 0;
        break;
      case '/PrfilePage':
        currentIndex = 1;
        break;
      case '/ErrorPage':
        currentIndex = 2;
        break;
      default:
        currentIndex = 0;
    }
    update(); // rebuild
  }
}