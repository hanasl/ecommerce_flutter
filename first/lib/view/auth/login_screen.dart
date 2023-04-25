import 'package:first/constance.dart';
import 'package:first/core/view_model/auth_view_model.dart';
import 'package:first/view/auth/registre_view.dart';
import 'package:first/view/home_view.dart';
import 'package:first/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Form(
          key: _formKey,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome,",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                GestureDetector(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Get.to(RegisterView());
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Sign in To Continue",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              text: 'Email',
              hint: 'example@gmail.com',
              onSave: (value) {
                controller.email = value;
              },
              validator: (value) {
                if (value == null) {
                  print("ERROR");
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
                text: "Passowrd",
                hint: "*****",
                onSave: (value) {
                  controller.password = value;
                },
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                }),
            Text("Forget Password?"),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(10),
              onPressed: () {
                Get.to(HomeView());
                /* _formKey.currentState?.save();

                if (_formKey.currentState!.validate()) {
                  controller.signInWithEmailAndPassword();
                }*/
              },
              color: primaryColor,
              child: CustomText(
                alignment: Alignment.center,
                text: "Sign In",
                color: Colors.white,
                fontSize: 20,
                height: 0,
                maxLine: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("-OR-"),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.grey.shade50,
              ),
              child: MaterialButton(
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Row(children: [
                  Image.asset(
                    'asset/fbk.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text("Sign In with Facebook"),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                controller.signInWithGoogle();
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Row(children: [
                Image.asset(
                  'asset/google.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 100,
                ),
                Text("Sign In with Google"),
              ]),
            ),
          ]),
        ),
      ),
    ));
  }
}
