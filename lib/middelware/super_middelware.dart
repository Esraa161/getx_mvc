import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvc/main.dart';

class SuperMiddelware extends GetMiddleware {
  @override
  // TODO: implement priority
  int? get priority => 3;
  bool myVar=false;
  @override
  RouteSettings? redirect(String? route) {
    if(myVar==true){
      return RouteSettings(
        name: "/super"
      );
    }
  }
}