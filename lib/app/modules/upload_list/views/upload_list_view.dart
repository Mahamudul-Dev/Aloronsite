import 'package:aloronsite/app/widgets/upload_list_tile.dart';
import 'package:aloronsite/service/connectivity_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/upload_list_controller.dart';

class UploadListView extends GetView<UploadListController> {
  const UploadListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Uploads'),
        actions: [
          ElevatedButton.icon(onPressed: (){}, style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.white), foregroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor)), icon: const Icon(Icons.upload), label: const Text('Start Upload')),
          SizedBox(width: 10.w,)
        ],
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: ConnectivityService().getConnectionStatus(),
            builder: (context, AsyncSnapshot<String> snapshot){
              if(snapshot.hasData){
                if(snapshot.data == 'Connected to Mobile Network'){
                  return Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.green,
                    child: Text(snapshot.data!, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                  );
                }
                if(snapshot.data == 'Connected to Wifi'){
                  return Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.green,
                    child: Text(snapshot.data!, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                  );
                }

                if(snapshot.data == 'No Internet Connection'){
                  return Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.red,
                    child: Text(snapshot.data!, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                  );
                }

                if(snapshot.data == 'Unknown'){
                  return Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.orange,
                    child: Text(snapshot.data!, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                  );
                }
              }

              return const SizedBox.shrink();
            },
          ),
          const UploadListTile(title: 'Sonchoy submit', pendingQueue: 100, successCount: 0.7,),
          const UploadListTile(title: 'Bokeya sonchoy submit', pendingQueue: 50, successCount: 0.20,),
          const UploadListTile(title: 'Kisti submit', pendingQueue: 700, successCount: 0.25,),
          const UploadListTile(title: 'Bokeya kisti submit', pendingQueue: 80, successCount: 0.15,),
          const UploadListTile(title: 'Photo receipt', pendingQueue: 930, successCount: 0.88,),
        ],
      )
    );
  }
}
