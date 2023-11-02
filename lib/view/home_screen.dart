import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvc/locale/locale_controller.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {


 //final  HomeController controller =Get.put(HomeController(),permanent: false); /// box
 // final controller=Get.lazyPut(() => HomeController(), fenix: true);
  @override
  Widget build(BuildContext context) {
    MyLocalController controllerLang =Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("home".tr,style: TextStyle(color: Colors.black87),),
      ),
      body: Center(
        child:
        GetBuilder<HomeController>(
          //init: HomeController(),
          builder: (controller)=>
         //   Obx(()=>
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){
                    controller.increment();
              },
                      icon:Icon(Icons.add) ),
              Text("${controller.counter.value}"),
              IconButton(onPressed: (){
                    controller.decrement();
              }, icon: Icon(Icons.minimize))
            ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FilledButton(
                            onPressed: (){
                              controllerLang.changeLang('ar');
                            },
                            child: Text("ar".tr)),
                        FilledButton(
                            onPressed: (){
                              controllerLang.changeLang('en');
                            },
                            child: Text("en".tr))
                      ],
                    )
                    // MaterialButton(onPressed: (){
                    //   Get.to(()=>HomeScreen2());
                    // }, child: Text("Next"))
                  ],
                ),
        )
      ),
    );
  }
}
