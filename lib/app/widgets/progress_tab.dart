import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressTab extends StatelessWidget {
  const ProgressTab({super.key, required this.title, required this.fileName, required this.totalFileCount, required this.onlineUploadedFileCount, required this.progressBarColor, required this.backgroundColor});

  final String title;
  final String fileName;
  final int totalFileCount;
  final int onlineUploadedFileCount;
  final Color progressBarColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(30))
      ),
      
      child: Flex(direction: Axis.horizontal, children: [
        SizedBox(
          width: 70,
          child: CircularStepProgressIndicator(
          totalSteps: totalFileCount,
          currentStep: onlineUploadedFileCount,
          stepSize: 6.0,
          selectedColor: progressBarColor,
          unselectedColor: Colors.grey[100],
          padding: 0,
          width: 150,
          height: 150,
          selectedStepSize: 10,
          roundedCap: (_, __) => true,
          ),
        ),
        SizedBox(width: 30.w,),
        Expanded(flex: 3, child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(title, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white)),
          Text('Offline files: $totalFileCount', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
          Text('Online Uploaded: $onlineUploadedFileCount', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white))
        ],))
      ],),
    );
  }
}
