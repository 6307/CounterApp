import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/DemoController.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController c = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (controller) {
              return Text(
                "This is value: ${controller.counter}",
                style: TextStyle(fontSize: 20),
              );
            }),
            // Reactive Text for the count value
            // Obx(() => "This is value: ${controller.}".text.xl3.make()),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: c.increment,
                  child: const Text('Increase'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: c.decrement,
                  child: const Text('Decrease'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
