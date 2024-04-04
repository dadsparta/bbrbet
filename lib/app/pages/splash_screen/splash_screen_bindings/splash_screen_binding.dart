import 'package:bbrbet/app/pages/splash_screen/splash_screen_controller/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreenBinding extends Binding{
  @override
  List<Bind> dependencies() {
    return[
      Bind.lazyPut(() => SplashScreenController()),
    ];

  }

}