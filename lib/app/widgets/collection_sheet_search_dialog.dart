import 'package:aloronsite/app/widgets/outline_input_box.dart';
import 'package:flutter/material.dart';

class CollectionSheetSearchDialog extends StatelessWidget {
  const CollectionSheetSearchDialog(
      {super.key,
      required this.soCodeController,
      required this.dateController,
      this.onCalenderPressed,
      this.onDayPressed,
      this.daySelectedValue,
      this.dayList});

  final TextEditingController soCodeController;
  final TextEditingController dateController;
  final String? daySelectedValue;
  final List<DropdownMenuItem<String>>? dayList;
  final void Function()? onCalenderPressed;
  final void Function(String?)? onDayPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          OutlineInputBox(
            controller: soCodeController,
              label: 'SO Code',
              hint: 'Type your so code here.',
              prefixIcon: Icons.account_box_rounded,
              keyboardType: TextInputType.number),
          const SizedBox(
            height: 10,
          ),
          OutlineInputBox(
            controller: dateController,
              label: 'Date',
              hint: '',
              keyboardType: TextInputType.number,
              suffix: IconButton(
                  onPressed: onCalenderPressed,
                  icon: const Icon(Icons.calendar_month_rounded))),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField<String>(
            value: daySelectedValue,
            items: dayList,
            onChanged: onDayPressed,
            decoration: const InputDecoration(
              labelText: 'Day',
              border: OutlineInputBorder(),
            ),
          )
        ],
      ),
    );
  }
}
