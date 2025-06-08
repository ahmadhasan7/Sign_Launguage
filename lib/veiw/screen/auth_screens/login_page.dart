import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:signlanguage/controller/login_controller.dart';
import 'package:signlanguage/veiw/widget/auth_widget/custom_curve_clipper.dart';

import '../../../core/functions/validetor.dart';
import '../../widget/auth_widget/custom_elevetedButton_auth.dart';
import '../../widget/auth_widget/custom_textform_auth.dart';
import '../../widget/auth_widget/forgetpassword_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller=Get.put(LoginController());
    return Scaffold(
        body:SingleChildScrollView(
          child: SafeArea(
            child: GetBuilder<LoginController>(
              builder: (controller)=>
               Column(
                children: [
                  const CustomCurveClipper(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                     children: [
                       Text("Welcome Back!",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                       CustomTextFormAuth(
                         hinttext: "email",
                         mycontroller: controller.email,
                         valid: (val) {
                           validInput("email", 10, 10, val!);
                         },
                         isNumber: false,
                         icons:const Icon(Icons.person),
                       ),
                       SizedBox(
                         height: MediaQuery.of(context).size.height * 0.01,
                       ),
                        CustomTextFormAuth(
                          hinttext:"Password",
                          mycontroller:controller.password,
                    valid: (val) {
                            validInput("password", 10, 10, val!);
                          },
                        isNumber: false,
                          obscureText:controller.showPass,
                          icons:const  Icon(Icons.password),
                          onTapIcon: (){controller.showPassword();},
                          iconData: controller.showPass?Icons.visibility:Icons.visibility_off,
                       ),


                     ],
                    ),
                  ),
                CustomForgetPassword(
                  title:"Did you Forget Password?" ,
                  onPressedButton: (){},
                  buttonTitle: "ForgetPassword",
                ),
                  CustomButtonAuth(title: "Login",onpressed: (){},)


                ],

                  ),
            ),
          ),
        )    );
  }
}
