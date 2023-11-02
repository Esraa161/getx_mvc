import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_mvc/main.dart';
import 'package:getx_mvc/view/middelware_pages/middelware_login.dart';
class MiddelwareHome extends StatelessWidget {
  const MiddelwareHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
              sharedPref!.clear();
              Get.offAll(()=>MiddelwareLogin());
            }, child: Text("Logout")),

          ],
        ),
      ),
    );
  }
}
