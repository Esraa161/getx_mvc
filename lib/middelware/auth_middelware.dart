import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvc/main.dart';

class AuthMiddelware extends GetMiddleware {
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("id") =="user") {
      return const RouteSettings(name: "/HomeMiddelware");
    }
    else if (sharedPref!.getString("id") == "admin") {
      return const RouteSettings(name: "/admin");
    }
    else {
      return null; // Return null if no redirect is needed
    }
  }
}