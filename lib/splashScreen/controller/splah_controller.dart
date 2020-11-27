import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/home/ui/view/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Get.off(HomePage(), transition: Transition.zoom);
      },
    );
  }

  @override
  void onClose() {
    super.onClose();
    print("same as dispose");
  }
}
