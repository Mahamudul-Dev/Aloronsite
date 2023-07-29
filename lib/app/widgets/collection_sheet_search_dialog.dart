import 'package:aloronsite/app/widgets/outline_input_box.dart';
import 'package:flutter/material.dart';

class CollectionSheetSearchDialog extends StatelessWidget {
  const CollectionSheetSearchDialog({super.key, required this.soCodeController, required this.dateController, required this.dayController, this.onSearch});

  final TextEditingController soCodeController;
  final TextEditingController dateController;
  final TextEditingController dayController;
  final void Function()? onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          OutlineInputBox(label: 'SO Code', hint: 'Type your so code here.', prefixIcon: prefixIcon, keyboardType: keyboardType)
        ],
      ),
    );
  }
}
