import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_collection_controller.dart';

class SearchCollectionView extends GetView<SearchCollectionController> {
  const SearchCollectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchCollectionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchCollectionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
