# getx_state_management

A sample Flutter project.

## Getting Started

the data controller

```dart
import 'package:get/get.dart';

class DataController extends GetxController {
  int number = 0;

  increment() {
    number++;
    update();
  }

  decrement() {
    number--;
    update();
  }
}
```





at the main

```dart
@override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DataController()); // I can achieve it in the whole project
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
```



int the view

```dart
GetBuilder<DataController>(builder: (dataController) { //it will be updated the view
  return Text(
    dataController.number.toString(),
    style: TextStyle(fontSize: 25),
  );
}),
```

```dart
floatingActionButton: FloatingActionButton(
  onPressed: () {
    Get.find<DataController>().increment(); // I will use the method anywhere
  },
  child: Icon(Icons.plus_one),
),
```
