import 'package:aloronsite/app/widgets/collection_item_view.dart';
import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../database/objectbox_db/collection_sheet_schema.dart';
import '../../../routes/app_pages.dart';

class SearchbarView extends SearchDelegate {
  final dbHelper = ObjectboxHelper();
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<CollectionSheetEntity> result = [];
    result = dbHelper
        .getCollectionSheet()
        .where((element) => element.serial.toString() == query)
        .toList();
    return ListView.separated(
        itemBuilder: (context, index) {
          return CollectionItemView(
              serial: result[index].serial.toString(),
              bSodossoName: result[index].bSodossoName,
              barirName: result[index].barirName,
              sonchoyStatus: result[index].sonchoyCollectionStatus.toString(),
              kistiCollectionStatus:
                  result[index].kistiCollectionStatus.toString(),
              sonchoy: result[index].sonchoy,
              kisti: result[index].kisti,
          onPressed: () => Get.toNamed(Routes.RECIPT_UPLOAD,
          arguments: {'object': result[index]})
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: result.length);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView();
  }
}
