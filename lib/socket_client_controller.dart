import 'dart:async';
import 'package:get/state_manager.dart';
import 'package:faker/faker.dart';

class SocketClientController extends GetxController {
  RxString _message = "".obs;
  RxString _searchText = "".obs;

  Timer _timer;
  final _faker = Faker();

  RxString get message => _message;

  @override
  void onInit() {
    super.onInit();

    _init();
  }

  _init() {
    /*ever(_searchText, (_){
      print(_searchText);
    });*/
    debounce(_searchText, (_) {
      print("search ${_searchText.value}");
    },
    time: Duration(milliseconds: 500));

    interval(_searchText,(_){
      print("Hola");
    }, time: Duration(seconds: 500));

    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _message.value = _faker.lorem.sentence();
    });
  }

  @override
  void onClose() {
    if(_timer != null) {
      _timer.cancel();
    }

    super.onClose();
  }

  void setSearchText(String text) {
    _searchText.value = text;
  }
}