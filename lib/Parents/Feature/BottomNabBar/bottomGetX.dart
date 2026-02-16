import 'package:get/get.dart';

class BottomGetx extends GetxController {
  int currentIndex = 0;

  // BottomNavigationBar tap
  void valueChange(int index) {
    currentIndex = index;
    update();
  }

  // Update by section name
  void updateIndexBySection(String section) {
    switch (section) {
      case 'home':
        currentIndex = 0;
        break;
      case 'aiGuide':
        currentIndex = 1;
        break;
      case 'journal':
        currentIndex = 2;
        break;
      case 'tools':
        currentIndex = 3;
        break;
      case 'more':
        currentIndex = 4;
        break;
      default:
        currentIndex = 0;
    }
    update(); // rebuild
  }
}
