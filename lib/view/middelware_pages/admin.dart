import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../main.dart';
class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
           sharedPref!.clear();
            Get.offAllNamed("/");
          }, child: Text("Sign out")),
        ],
      ),
    );
  }
}
