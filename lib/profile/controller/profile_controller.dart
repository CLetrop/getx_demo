import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/home/models/user.dart';

class ProfileController extends GetxController {
  User _user;
  String _inputText = "";

  User get user => _user;

  String get inputText => _inputText;

  @override
  void onInit() {
    super.onInit();
    this._user = Get.arguments as User;
  }

  void onInputTextChange(String text) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back(result: this._inputText);
    } else {
      showCupertinoModalPopup(
          context: Get.overlayContext,
          builder: (_) => CupertinoActionSheet(
            title: Text("Error"),
            message: Text("Ingrese un valor"),
            cancelButton: CupertinoActionSheetAction(
              child: Text("Aceptar"),
              onPressed: () => Get.back(),
            ),
          ));
    }
  }
}
