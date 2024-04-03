import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainHomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  var isScrolled = false.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void _scrollListener() {
    if (scrollController.offset > 0 &&
        !scrollController.position.outOfRange) {
      if (!isScrolled.value) {
        isScrolled.value = true;
      }
    } else {
      if (isScrolled.value) {
        isScrolled.value = false;
      }
    }
  }
}
