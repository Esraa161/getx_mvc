import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_mvc/main.dart';
import 'package:getx_mvc/view/middelware_pages/admin.dart';
import 'package:getx_mvc/view/middelware_pages/middelware_home.dart';
class MiddelwareLogin extends StatelessWidget {
  const MiddelwareLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
              sharedPref!.setString("id", "user");
              Get.offAll(()=>MiddelwareHome());
            }, child: Text("Login user ")),
            MaterialButton(onPressed: (){
              sharedPref!.setString("id", "admin");
              Get.offAll(()=>Admin());
            }, child: Text("Login Admin")),

          ],
        ),
      ),
    );
  }
}
