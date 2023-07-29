import 'package:aloronsite/database/cache_db/cache_db.dart';

class AuthService {

  bool checkLogin(){
    return CacheDb.cacheDB.hasData('login');
  }
}