import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService{
  SharedPreferences? sharedPref;
  Future <SettingsServices> init()async{

    ///.........Start Services.................
    sharedPref=await SharedPreferences.getInstance();

    ///.............End Services...................

    return this;
  }
}