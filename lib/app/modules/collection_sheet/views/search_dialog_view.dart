import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/collection_sheet_search_dialog.dart';
import '../controllers/collection_sheet_controller.dart';

class SearchDialogView extends GetView<CollectionSheetController> {
  const SearchDialogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CollectionSheetSearchDialog(
          soCodeController: controller.soCodeController.value,
          dateController: controller.dateController.value,
          daySelectedValue: controller.selectedDay.value,
          dayList: controller.weekdays(),
          onDayPressed: (day) => controller.selectedDay.value = day!,
          onCalenderPressed: () => _selectDate(context),
        ),
        SizedBox(
          height: 10.h,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Theme.of(context).primaryColor)),
          child: Text(
            'search'.tr,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.white),
          ),
        )
      ],
    ));
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: currentDate.add(const Duration(days: 365)), // 1 year from now
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate != null && selectedDate != currentDate) {
      controller.dateController.value.text =
          selectedDate.toString().substring(0, 10);
    }
  }
}
