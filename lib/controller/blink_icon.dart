import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BlinkingHeartController extends GetxController {
  final _scale = 1.0.obs;

  double get scale => _scale.value;

  void animateHeart() {
    _scale.value = 0.5;
    _scale.value = 1.0;
  }
}

class HeartController extends GetxController {
  var isFilled = false.obs;

  void toggleHeart() {
    isFilled.value = !isFilled.value;
  }
}