import 'package:first/core/view_model/auth_view_model.dart';
import 'package:first/view/auth/login_screen.dart';
import 'package:first/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../core/view_model/home_view_model.dart';
import 'cart_view.dart';

class ControlView extends GetWidget<AuthViewModel> {
  Widget currentScreen = HomeView();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>() == null)
          ? LoginScreen()
          : GetBuilder<HomeViewModel>(
              builder: (controller) => Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: bottomNavigationBar(),
              ),
            );
    });
  }

  Widget bottomNavigationBar() {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Image.asset(
                  'asset/home.png',
                  fit: BoxFit.contain,
                  width: 20,
                ),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Image.asset(
                  'asset/cartt.png',
                  fit: BoxFit.contain,
                  width: 20,
                ),
              )),
          BottomNavigationBarItem(
              activeIcon: Text('account'),
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Image.asset(
                  'asset/profill.png',
                  fit: BoxFit.contain,
                  width: 20,
                ),
              ))
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.chandeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}
