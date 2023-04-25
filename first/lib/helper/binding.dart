import 'package:get/get.dart';

import '../core/view_model/auth_view_model.dart';
import '../core/view_model/home_view_model.dart';
import '../view/auth/login_screen.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => HomeViewModel());
  }
}
