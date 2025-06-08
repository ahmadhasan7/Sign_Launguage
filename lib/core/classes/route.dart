
import 'package:get/get.dart';
import 'package:signlanguage/core/constant/routing.dart';
import 'package:signlanguage/veiw/screen/auth_screens/login_page.dart';
import 'package:signlanguage/veiw/screen/auth_screens/signup_page.dart';
import 'package:signlanguage/veiw/screen/onbordring_view.dart';
import '../../veiw/screen/main_login_screen.dart';
import '../../veiw/screen/splash_view.dart';
class Routers {
  List<GetPage<dynamic>>? routers = [
    GetPage(name: '/', page: ()=>const SplashScreen()),
    GetPage(name: AppRoute.onbording, page: ()=>const OnBordringView()),
    GetPage(name: AppRoute.mainloginpage, page:()=>const MainLoginScreen()),
    GetPage(name: AppRoute.loginpage, page: ()=>const LoginPage()),
    GetPage(name: AppRoute.signup, page: ()=>const SignupPage())
  ];
}
