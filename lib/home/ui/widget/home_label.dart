import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/home/controller/home_controller.dart';

class HomeLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'counter',
      builder: (_) => Text(
        _.counter.toString(),
      ),
    );
  }
}
