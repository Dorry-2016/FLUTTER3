import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: 300,
                color: primaryColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.group_work), Text("groups")]),
              );
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
