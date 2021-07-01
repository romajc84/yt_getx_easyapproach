import 'package:get/get.dart';
import 'package:yt_getx_easyapproach/pages/home/controller/home_controller.dart';
import 'package:yt_getx_easyapproach/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
