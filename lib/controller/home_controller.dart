import 'package:get/get.dart';
class HomeController extends GetxController{
  RxInt counter =0.obs;
  void increment(){
    counter ++;
    update();   /// = listener    = setstate
  }
  void decrement(){
    counter --;
    update();   /// = listener    = setstate
  }
  @override
  void onInit() { /// = initialState
     print("Init home controller");
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {  ///after build the widgit
    print("Ready home controller");
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    print("Close home controller");
    // TODO: implement onClose
    super.onClose();
  }

}