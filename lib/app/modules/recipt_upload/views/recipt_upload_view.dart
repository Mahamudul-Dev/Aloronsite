import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recipt_upload_controller.dart';

class ReciptUploadView extends GetView<ReciptUploadController> {
  const ReciptUploadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReciptUploadView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ReciptUploadView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
