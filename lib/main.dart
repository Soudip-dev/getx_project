import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/pages/first_page/first_page.dart';
import 'package:getx_project/pages/test_page/test_page.dart';

void main() async {
  await initSevices();
  runApp(const MyApp());
}
initSevices()async {
  // Get.lazyPut(() => TestPage());
  print("starting services...");
  await Get.putAsync(() => TestPage().init());
  print("services started");
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: .fromSeed(seedColor: Colors.deepPurple),
    ),
           home: FirstPage(),
          );
  }
}
