import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'helper/init_dependency.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitDep(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        //useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
