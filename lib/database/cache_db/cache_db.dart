import 'package:get_storage/get_storage.dart';

class CacheDb {
  static final cacheDB = GetStorage();

  void saveLoginInfo (bool loggedIn){
    cacheDB.write('login', loggedIn);
  }
}