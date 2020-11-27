import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/profile/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${_.user.firstName} ${_.user.lastName}"),
                SizedBox(height: 10,),
                CupertinoTextField(
                  onChanged: _.onInputTextChange,
                ),
                SizedBox(height: 10,),
                CupertinoButton(
                  child: Text("enviar"),
                  onPressed: _.goToBackWithData,
                )
              ],
            ),
          )
        );
      },
    );
  }
}
