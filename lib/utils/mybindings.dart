import 'package:get/get.dart';
import 'package:getx_mvc/controller/home_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
   Get.put(HomeController(),permanent: false);
  }

}