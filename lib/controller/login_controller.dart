import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LoginController extends GetxController{
  late TextEditingController email;
  late TextEditingController password;
  bool showPass = true;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  showPassword() {
    showPass = !showPass;
    update();
  }
}