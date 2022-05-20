import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retro_Sample/app_binding.dart';
import 'package:retro_Sample/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialBinding: AppBinding(),
      home: HomePage(),
    );
  }
}
