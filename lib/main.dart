import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/global_controller.dart';
import 'package:getx_demo/reactive/ui/view/reactive_page.dart';
import 'package:get/get.dart';
import 'package:getx_demo/socket_client_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    Get.put(SocketClientController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ReactivePage(),
    );
  }
}
