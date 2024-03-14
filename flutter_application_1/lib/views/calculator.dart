import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/calculatorcontroller.dart';
import 'package:flutter_application_1/views/custombuttom.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  CalculatorController calculatorController =
      Get.put(CalculatorController as CalculatorController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: [
          CustomTextField(
            customTextFieldController: num1controller,
            userFieldController: TextEditingController(),
            hintText: '',
            prefixIcon: const Icon(Icons.abc),
            controller: null,
          ),
          CustomTextField(
            customTextFieldController: num2controller,
            userFieldController: TextEditingController(),
            hintText: '',
            prefixIcon: const Icon(Icons.abc),
            controller: null,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                double a = double.parse(num1controller.text);
                double b = double.parse(num2controller.text);
                calculatorController.updateValues(a, b);
              },
              child: const Text("calculate")),
          const SizedBox(
            height: 10,
          ),
          const custombutton(buttonlabel: "calculate"),
          obx(
            () => Customtext(
                label:
                    "the sum is ${calculatorController.a} and ${calculatorController.b}",
                fontsize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  obx(Customtext Function()) {}
}
