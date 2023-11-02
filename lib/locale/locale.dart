import 'package:get/get.dart';

class MyLocale implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar":{
      "home":"الصفحة الرئيسية",
      "ar":"عربي",
      "en":"إنجليزي"
    },
    "en":{
      "home":"Home Screen",
      "ar":"Arabic",
      "en":"English"
    }
  };

}