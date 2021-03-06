import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_getx_easyapproach/pages/home/controller/home_controller.dart';
import 'package:yt_getx_easyapproach/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${homeController.count}',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextButton(
              onPressed: () {
                // Get.toNamed('/detail');
                // print(apiService.fetchTextFromApi());
                homeController.increment();
              },
              child: Text(
                'Increment',
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                // Get.defaultDialog(title: 'This is dialog');
                Get.snackbar(
                  'Title',
                  'This is getx snackbar',
                  snackPosition: SnackPosition.BOTTOM,
                );
                // Get.toNamed('/detail');
              },
              child: Text(
                'Go to detail',
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                primary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
