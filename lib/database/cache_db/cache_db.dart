import 'package:get_storage/get_storage.dart';

class CacheDb {
  static final cacheDB = GetStorage();

  void saveLoginInfo (bool loggedIn){
    cacheDB.write('login', loggedIn);
  }

  void saveSheetStatus(bool status){
    cacheDB.write('sheetStatus', status);
  }

  bool getSheetStatus(){
   bool? status = cacheDB.read('sheetStatus');
   return status ?? false;
  }
}