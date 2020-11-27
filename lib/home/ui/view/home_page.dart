import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/global_controller.dart';
import 'package:getx_demo/home/controller/home_controller.dart';
import 'package:getx_demo/home/ui/widget/home_list.dart';
import 'package:getx_demo/product/ui/widget/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        print("build home");
        return Scaffold(
          appBar: AppBar(
            actions: [
              GetBuilder<GlobalController>(
                id: 'favorites',
                builder: (_) => FlatButton(
                  onPressed: () {},
                  child: Text("Favoritos ${_.favorites.length}"),
                ),
              )
            ],
          ),
          //body: HomeList(),
          body: ProductList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _.increment();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
