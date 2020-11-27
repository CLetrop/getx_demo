import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/home/models/user.dart';
import 'package:getx_demo/profile/ui/view/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  int get counter => _counter;
  List<User> get users => _users;
  bool get loading => _loading;

  @override
  void onReady() {
    super.onReady();
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data;
    this._loading = false;
    update(['users']);
  }

  void increment() {
    this._counter++;
    update(['counter'], _counter >= 10);
  }

  shoUserProfile(User user) async {
    final result = await Get.to<String>(ProfilePage(), arguments: user);

    if(result != null) {
      print("result $result");
    }
  }
}
