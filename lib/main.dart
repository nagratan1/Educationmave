
import 'package:education/MyRoutes/myPagesName.dart';
import 'package:education/MyRoutes/myroutename.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main() {
   WidgetsFlutterBinding.ensureInitialized();
 // Get.lazyPut<LoginController>(() => LoginController());
  runApp(const MyApp());
} 

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        
        //statusBarColor:AppColor.dashbord,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SING IN",
      //theme: AppTheme.appTheme,
      initialRoute: MyPagesName.splash,
      getPages: MyRoute.list,
    );
  }
}

