
import 'package:get/get.dart';
import '../../veiw/screen/splash_view.dart';
class Routers {
  List<GetPage<dynamic>>? routers = [
    GetPage(name: '/', page: ()=>SplashScreen())
  ];
}
