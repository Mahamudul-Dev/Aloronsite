// ignore_for_file: unrelated_type_equality_checks
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService{

  Future<String> getConnectionStatus () async {
    String connectionStatus = 'Unknown';
    var connectivityResult = await (Connectivity().checkConnectivity());

    if(connectivityResult == ConnectivityResult.none){
      connectionStatus = 'No Internet Connection';
    }
    if(connectivityResult == ConnectivityResult.mobile){
      connectionStatus = 'Connected to Mobile Network';
    }
    if(connectivityResult == ConnectivityResult.wifi){
      connectionStatus = 'Connected to Wifi';
    }

    return connectionStatus;
  }

  bool isConnected(){
    var status = false;
    var connectivityResult = (Connectivity().checkConnectivity());

    if(connectivityResult == ConnectivityResult.none){
      status = false;
    }
    if(connectivityResult == ConnectivityResult.mobile){
      status = true;
    }
    if(connectivityResult == ConnectivityResult.wifi){
      status = true;
    }

    return status;
  }

}