import 'dart:ui';
import 'package:get/get.dart';
import 'package:getx_mvc/main.dart';

class MyLocalController extends GetxController{
  Locale initialLang=sharedPref?.getString("lang")==null?Get.deviceLocale! :Locale(sharedPref!.getString("lang")!);
  void changeLang(String codeLang){
    Locale locale=Locale(codeLang);
    sharedPref?.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}