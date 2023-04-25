import 'package:first/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../constance.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';

class RegisterView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginScreen());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Sign Up,",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                text: 'Name',
                hint: 'Hana',
                onSave: (value) {},
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                text: 'Email',
                hint: 'example@gmail.com',
                onSave: (value) {},
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                text: 'Password',
                hint: '**********',
                onSave: (value) {},
                validator: (value) {
                  if (value == null) {
                    print('error');
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(10),
                onPressed: () {},
                color: primaryColor,
                child: CustomText(
                  alignment: Alignment.center,
                  text: "Sign Up",
                  color: Colors.white,
                  fontSize: 20,
                  height: 0,
                  maxLine: 1,
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
