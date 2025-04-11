
import 'package:get/get.dart';
import 'package:signlanguage/core/constant/routing.dart';
import 'package:signlanguage/veiw/screen/onbordring_view.dart';
import '../../veiw/screen/splash_view.dart';
class Routers {
  List<GetPage<dynamic>>? routers = [
    GetPage(name: '/', page: ()=>const SplashScreen()),
    GetPage(name: AppRoute.onbording, page: ()=>const OnBordringView())
  ];
}
