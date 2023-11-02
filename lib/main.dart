import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvc/locale/locale.dart';
import 'package:getx_mvc/locale/locale_controller.dart';
import 'package:getx_mvc/middelware/auth_middelware.dart';
import 'package:getx_mvc/middelware/super_middelware.dart';
import 'package:getx_mvc/services/settings_services.dart';
import 'package:getx_mvc/utils/mybindings.dart';
import 'package:getx_mvc/view/home_screen.dart';
import 'package:getx_mvc/view/middelware_pages/admin.dart';
import 'package:getx_mvc/view/middelware_pages/middelware_home.dart';
import 'package:getx_mvc/view/middelware_pages/super.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? sharedPref;
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 sharedPref=await SharedPreferences.getInstance();
 // await initalServices();
  runApp(const MyApp());
}
Future initalServices()async{
  await Get.putAsync(() => SettingsServices().init());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocalController controller =Get.put(MyLocalController());
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
       initialBinding: MyBindings(),
      locale: controller.initialLang,
      translations: MyLocale(),
      getPages: [

        GetPage(
            name: "/", page: ()=>HomeScreen(),
            //binding: MyBindings(),
            middlewares:[
              AuthMiddelware(),
              SuperMiddelware()
            ]),
        GetPage(name: "/HomeMiddelware", page:()=> MiddelwareHome()),
        GetPage(name: "/admin", page:()=> Admin()),
        GetPage(name: "/super", page:()=> SuperScreen())
      ],
    );
  }
}
