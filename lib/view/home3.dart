import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_mvc/utils/mybindings.dart';
import 'package:getx_mvc/view/home_screen.dart';

import 'home_screen2.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
              Get.to(()=>HomeScreen2());
            }, child: Text("home2")),
            MaterialButton(onPressed: (){
              Get.to(()=>HomeScreen(),binding: MyBindings());
            }, child: Text("home1"))
          ],
        ),
      ),
    );
  }
}
