import 'dart:convert';
import 'dart:io';

import 'package:aloronsite/app/data/utils.dart';
import 'package:aloronsite/app/routes/app_pages.dart';
import 'package:aloronsite/database/objectbox_db/collection_sheet_schema.dart';
import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:aloronsite/database/objectbox_db/upload_photo_schema.dart';
import 'package:aloronsite/service/connectivity_service.dart';
import 'package:dio/dio.dart' as fetchx;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';

class ReciptUploadController extends GetxController {

  RxBool isLoading = false.obs;
  Rx<File?> image = Rx<File?>(null);
  final picker = ImagePicker();
  final dio = fetchx.Dio();
  final connectivityService = ConnectivityService();
  final dbHelper = ObjectboxHelper();

  Future pickImage()async{
    if(await Permission.camera.request().isGranted){
      final pickerImage = await picker.pickImage(source: ImageSource.camera);
      if(pickerImage != null){
        image.value = File(pickerImage.path);
      } else {
        Get.snackbar('Opps', 'Please Capture An Picture');
      }
    } else {
      Get.snackbar('Sorry', 'Please givs us camera pernission');
    }
  }

  String formatDateTime(DateTime dateTime) {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    return formatter.format(dateTime);
  }


  Future<void> submitImage(CollectionSheetEntity sheet) async {
    isLoading.value = true;
    if(connectivityService.isConnected()){
      fetchx.FormData data = fetchx.FormData.fromMap({
        "so_code":sheet.soCode.toString(),
        "serial":sheet.serial.toString(),
        "sodosso_name":sheet.sodossoName,
        "image": await fetchx.MultipartFile.fromFile(image.value?.path ?? '', filename: image.value?.path),
        "time": DateTime.parse(formatDateTime(DateTime.now()))
      });

      try{
        final response = await dio.post(BASE_URL+UPLOAD_RECEIPT, data: jsonEncode(data), options: fetchx.Options(headers: headers));

        if(response.statusCode == 200){
          isLoading.value = false;
          Get.snackbar('Success', response.data);
          Logger().i('${sheet.accountNo}  ${sheet.soCode}');
          Get.offAndToNamed(Routes.SONCHOY_SUBMIT, arguments: {"object":sheet});

        } else {
          isLoading.value = false;
          Get.snackbar('Opps', 'There was an error');
        }
      } catch (e){
        isLoading.value = false;
        Logger().e(e);
      }
    } else {
      final fileBytes = await image.value?.readAsBytes();
      final schema = UploadPhotoSchema(soCode: sheet.soCode.toString(), serial: sheet.serial.toString(), sodossoName: sheet.sodossoName, fileBytes: fileBytes!, fileName: image.value?.path ?? 'non', time: formatDateTime(DateTime.now()), photoStatus: 0);
      await dbHelper.savePhotoReceiptLocal(schema).then((value) {
        isLoading.value = false;
        Logger().i('${sheet.accountNo}  ${sheet.soCode}');
        Get.offAndToNamed(Routes.SONCHOY_SUBMIT, arguments: {"object":sheet});
      });
    }

  }
}
