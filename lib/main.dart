import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:run/data/services/storage/services.dart';
import 'package:run/db/db_helper.dart';
import 'package:run/screens/home/home.dart';
import 'package:run/screens/registration/login.dart';
import 'package:run/screens/registration/signup.dart';
import 'package:run/screens/registration/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await GetStorage.init();
  //await Get.putAsync(() => StorageService().init());
  await DBHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Master',
      home: Splash(),
    );
  }
}
