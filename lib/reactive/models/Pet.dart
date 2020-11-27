import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class RxPet {
  RxString name;
  RxInt age;

  RxPet({@required this.name, @required this.age});
}

class Pet {
  RxPet rx;
  Pet({@required String name, @required int age}){
    this.rx = RxPet(name: name.obs, age: age.obs);
  }

  String get name => this.rx.name.value;
  int get age => this.rx.age.value;

  set name(String value) {
    this.rx.name.value = value;
  }

  set age(int value) {
    this.rx.age.value = value;
  }
}
