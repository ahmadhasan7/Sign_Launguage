import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:signlanguage/core/classes/stutusconntection.dart';
import 'package:signlanguage/veiw/widget/auth_widget/custom_curve_clipper.dart';

import '../../../controller/signup_controller.dart';
import '../../../core/classes/handlingrequstveiw.dart';
import '../../../core/functions/validetor.dart';
import '../../widget/auth_widget/custom_elevetedButton_auth.dart';
import '../../widget/auth_widget/custom_textform_auth.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(SignupController());
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: GetBuilder<SignupController>(
          builder: (controller) => Column(
            children: [
              const CustomCurveClipper(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "Lets Register Now",
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                    CustomTextFormAuth(
                      hinttext: "user name",
                      mycontroller: controller.username,
                      valid: (val) {
                        validInput("username", 10, 10, val!);
                      },
                      isNumber: false,
                      icons: const Icon(Icons.padding_rounded),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    CustomTextFormAuth(
                      hinttext: "email",
                      mycontroller: controller.email,
                      valid: (val) {
                        validInput("email", 10, 10, val!);
                      },
                      isNumber: false,
                      icons: const Icon(Icons.person),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    CustomTextFormAuth(
                      hinttext: "Password",
                      mycontroller: controller.password,
                      valid: (val) {
                        validInput("password", 10, 10, val!);
                      },
                      isNumber: false,
                      obscureText: controller.showPass,
                      icons: const Icon(Icons.password),
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      iconData: controller.showPass
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ],
                ),
              ),
              controller.statusRequest==StatusRequest.failure?CustomButtonAuth(
                title: "Sign up",
                onpressed: () {
                  controller.signUp();
                }):HandlingDataView(
                widget: CustomButtonAuth(
                  title: "Sign up",
                  onpressed: () {
                    controller.signUp();
                  },
                ),
                statusRequest: controller.statusRequest,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
