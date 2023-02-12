import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/data_controller.dart';
import 'package:getx_state_management/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first page")),
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
                  Get.to(() => SecondPage());
                },
                child: Text("second page")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<DataController>().increment();
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
