import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../core/constant/app_routes.dart';
import '../data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;

  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.home);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  onInit() {
    pageController = PageController();
    super.onInit();
  }
}
