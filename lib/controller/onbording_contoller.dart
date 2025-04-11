import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signlanguage/core/constant/staticdata.dart';

abstract class OnBordingController extends GetxController {
  next();
  onpagechange(int m);
}
class OnBordingControllerImp extends OnBordingController{
  int currentindex=0;
  late PageController pageController;
  @override
  next() {
    currentindex++;
    if(currentindex<StaticData().onBordingData.length){
      pageController.animateToPage(currentindex, duration:Duration(seconds: 1), curve: Curves.easeOutBack);
    }
    else {
      //Get.toNamed(AppRoute.signup);
    }
    update();
  }

  @override
  onpagechange(int index) {
    currentindex=index;
    update();
  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }
}