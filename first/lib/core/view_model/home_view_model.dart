import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../view/cart_view.dart';
import '../../view/home_view.dart';
import '../../view/profil_view.dart';

class HomeViewModel extends GetxController {
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;
  Widget _currentScreen = HomeView();
  get currentScreen => _currentScreen;

  void chandeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeView();
          break;
        }
        case 1:
        {
          _currentScreen = CartView();
          break;
        }
        case 2:
        {
          _currentScreen = ProfilView();
          break;
        }
    }
    update();
  }
}
