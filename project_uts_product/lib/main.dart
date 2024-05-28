import 'package:flutter/material.dart';
import 'package:project_uts_product/screens/add_product.dart';
import 'package:project_uts_product/screens/all_product.dart';
import 'package:project_uts_product/screens/data_controller.dart';
import 'package:project_uts_product/screens/home_screens.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  loadData() async {
    await Get.find<DataController>().getData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DataController());
    loadData();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
