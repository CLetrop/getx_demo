import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_demo/reactive/models/Pet.dart';
import 'package:getx_demo/socket_client_controller.dart';

class ReactiveController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;
  RxList<String> items = List<String>().obs;
  RxMap<String, dynamic> itemsMap = Map<String, dynamic>().obs;
  Pet myPet = Pet(name: 'Max', age: 8);

  StreamSubscription<String> _subscription;

  @override
  void onInit() {
    super.onInit();

    /*final SocketClientController socketController =  Get.find<SocketClientController>();
    _subscription = socketController.message.listen((String data) {
      print("message ::: ${data}");
    });*/
  }

  @override
  void onClose() {
    _subscription?.cancel();

    super.onClose();
  }

  void increment() {
    counter.value++;
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem(){
    items.add(DateTime.now().toString());
  }

  void removeItem(int index) {
    items.removeAt(index);
  }

  void addMapItem() {
    final String key = DateTime.now().toString();
    itemsMap[key] = key;
  }

  void removeMapItem(String key) {
    itemsMap.remove(key);
  }

  void setPetAge(int age) {
    myPet.age = age;
  }
}