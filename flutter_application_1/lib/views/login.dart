import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/utils/prefs.dart';
import 'package:flutter_application_1/views/custombuttom.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:get/get.dart';

TextEditingController usernamecontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

Pref myPrefs = Pref();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    myPrefs.getvalue("username").then((value) {
      usernamecontroller.text = value;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("login "),
        backgroundColor: primaryColor,
        foregroundColor: appWhite,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Customtext(
                  label: "login screen",
                  labelColor: primaryColor,
                  fontsize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              const Customtext(
                label: "Username",
                fontsize: 30,
                fontWeight: FontWeight.bold,
              ),
              CustomTextField(
                userFieldController: usernamecontroller,
                icon: Icons.person,
                hint: "username",
                customTextFieldController: TextEditingController(),
                hintText: 'enter username',
                prefixIcon: Icon(Icons.account_circle),
                controller: null,
              ),
              const Customtext(
                label: "Password",
                fontsize: 30,
                fontWeight: FontWeight.bold,
              ),
              CustomTextField(
                userFieldController: passwordcontroller,
                customTextFieldController: passwordcontroller,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "Secret Pin",
                controller: null,
                hintText: 'password',
                prefixIcon: Icon(Icons.abc),
              ),
              const SizedBox(
                height: 30,
              ),
              // custombutton(
              //   buttonlabel: "login",
              // ),
              custombutton(
                buttonlabel: "login",
                action: gotologin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Customtext(
                    label: "forgot password?",
                    fontsize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Customtext(
                      label: "recover",
                      labelColor: primaryColor,
                      fontsize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    onTap: () {
                      debugPrint("recover");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // MaterialButton(
              //  onPressed: () {
              //   Get.toNamed("/calculator");
              // },
              //child: Text("login"),
              //color: primaryColor,
              //height: 50,
              // minWidth: double.maxFinite,
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Customtext(
                    label: "no account yet?",
                    fontsize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Customtext(
                    label: "Register",
                    labelColor: primaryColor,
                    fontsize: 30,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void gotologin() {
    myPrefs.setValue("username", usernamecontroller.text);
    Get.offAndToNamed("/home");
  }
}
