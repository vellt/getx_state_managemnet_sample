import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/first_page.dart';

import 'data_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetBuilder<DataController>(builder: (dataController) {
              return Text(
                dataController.number.toString(),
                style: TextStyle(fontSize: 25),
              );
            }),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("first button"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<DataController>().decrement();
        },
        child: Icon(Icons.exposure_minus_1),
      ),
    );
  }
}
