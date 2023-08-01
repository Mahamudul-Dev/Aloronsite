import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../widgets/collection_sheet_search_dialog.dart';
import '../controllers/collection_sheet_controller.dart';

class SearchDialogView extends GetView<CollectionSheetController> {
  const SearchDialogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Obx(() => CollectionSheetSearchDialog(
                  soCodeController: controller.soCodeController.value,
                  dateController: controller.dateController.value,
                  daySelectedValue: controller.selectedDay.value,
                  dayList: controller.weekdays(),
                  onDayPressed: (day) => controller.selectedDay.value = day!,
                  onCalenderPressed: () => controller.selectDate(context),
                )),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              onPressed: () => controller.getSheet(),
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
        ),
        Obx(() => controller.isLoading.value ? Container(
          color: const Color(0x84fdfdfd),
          child: Center(
            child: LoadingAnimationWidget.inkDrop(color: Theme.of(context).primaryColor, size: 25),
          ),
        ) : const SizedBox.shrink())
      ],
    ));
  }
}
