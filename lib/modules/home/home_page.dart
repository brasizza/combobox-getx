import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(child: Text('Escolha um dado do combobox')),
          Obx(() => Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DropdownButton<String>(
                  items: controller.items
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: (controller.comboSelect == '') ? null : controller.comboSelect,
                  onChanged: (newValue) {
                    controller.comboSelect = (newValue ?? '');
                  },
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Obx(() => Visibility(
                  visible: controller.comboSelect != '',
                  child: Text("Voce selecionou o ${controller.comboSelect}"),
                )),
          ),
        ],
      )),
    );
  }
}
