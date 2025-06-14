import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:signlanguage/core/constant/routing.dart';

import '../core/classes/stutusconntection.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/remote/auth/signup_data.dart';
class SignupController extends GetxController{
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  bool showPass = true;
  SignupData signUpData=SignupData(Get.find());
  MyServices services =Get.find();
  StatusRequest statusRequest=StatusRequest.none;


  @override
  void onInit() {
    username=TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
  showPassword() {
    showPass = !showPass;
    update();
  }
  signUp() async {
    statusRequest = StatusRequest.loading;
    update() ;
    var response = await signUpData.PostSignUpdata(email: email.text,password: password.text,username: username.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    update() ;
    print(statusRequest);
    if (statusRequest == StatusRequest.seccuss) {
      Get.toNamed(AppRoute.mainloginpage );
    }
    if(response==StatusRequest.serverfailure){
      Get.defaultDialog(title: "تحذير" , middleText: "البريد الالكتروني مكرر سابقاً") ;
      print(statusRequest);
      statusRequest = StatusRequest.failure;
      update();
    }
    update();
  }
}