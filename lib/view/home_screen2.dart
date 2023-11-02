import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_mvc/view/home_screen.dart';
import '../controller/home_controller.dart';
class HomeScreen2 extends StatelessWidget {

 //final  HomeController controller =Get.put(HomeController());
  HomeController controller =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
          child:
          //GetBuilder<HomeController>(
            //init: HomeController(),
           // builder: (controller)=>
            //   Obx(()=>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${controller.counter.value}"),

              ],),
          )
      //),
    );
  }
}
