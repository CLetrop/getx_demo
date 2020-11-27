import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/reactive/controller/reactive_controller.dart';
import 'package:getx_demo/socket_client_controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketController = Get.find<SocketClientController>();
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                onChanged: (text){
                  socketController.setSearchText(text);
                },
              ),
              Obx(
                () => Text("message ::: ${socketController.message.value}"),
              ),
              FlatButton(
                child: Text("set Age"),
                onPressed: () {
                  _.setPetAge(_.myPet.age + 1);
                },
              )
            ],
          ),
        );
      },
    );
  }
}
