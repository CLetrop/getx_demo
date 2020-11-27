import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/splashScreen/controller/splah_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
