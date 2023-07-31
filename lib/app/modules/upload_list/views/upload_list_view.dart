import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/upload_list_controller.dart';

class UploadListView extends GetView<UploadListController> {
  const UploadListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UploadListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UploadListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
