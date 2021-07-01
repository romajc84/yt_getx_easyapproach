import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_getx_easyapproach/pages/detail/binding/detail_binding.dart';
import 'package:yt_getx_easyapproach/pages/detail/view/detail.dart';
import 'package:yt_getx_easyapproach/pages/home/binding/home_binding.dart';
import 'package:yt_getx_easyapproach/pages/home/view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailScreen(),
          binding: DetailBinding(),
        ),
      ],
      initialRoute: '/home',
    );
  }
}
