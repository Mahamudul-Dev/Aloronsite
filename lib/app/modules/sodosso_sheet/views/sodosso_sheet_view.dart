import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sodosso_sheet_controller.dart';

class SodossoSheetView extends GetView<SodossoSheetController> {
  const SodossoSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SodossoSheetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SodossoSheetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
