import 'dart:async';
import 'package:get/get.dart';

class BreatingGetx extends GetxController {

  RxBool isVisible = false.obs;
  RxInt seconds = 30.obs;

  Timer? timer;

  void startBreathing() {
    isVisible.value = true;
    seconds.value = 30;

    timer?.cancel();

    timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (seconds.value > 0) {
        seconds.value--;
      } else {
        t.cancel();
        isVisible.value = false;
      }
    });
  }
}
