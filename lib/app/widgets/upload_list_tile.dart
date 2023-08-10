import 'package:flutter/material.dart';

class UploadListTile extends StatelessWidget {
  const UploadListTile({super.key, required this.title, required this.pendingQueue, required this.successCount});

  final String title;
  final int pendingQueue;
  final double successCount;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.labelMedium,),
      subtitle: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pending in queue: $pendingQueue', style: Theme.of(context).textTheme.bodyMedium,),
              Text('Success: ${(successCount*100).toStringAsFixed(0)} %', style: Theme.of(context).textTheme.bodyMedium,),
            ],
          ),
          LinearProgressIndicator(value: successCount, backgroundColor: Colors.grey.shade100, color: Colors.blue,)
        ],
      ),
    );
  }
}
