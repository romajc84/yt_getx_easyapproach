import 'package:get/get.dart';
import 'package:yt_getx_easyapproach/pages/detail/controller/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}
