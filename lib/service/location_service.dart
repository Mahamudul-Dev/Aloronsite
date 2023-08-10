import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Future<String> getCityName () async{
    String cityName = 'Unknown';
    final status = await Permission.location.request();
    if (status.isGranted) {
      // Permission granted, proceed with getting the location
      try {
        // Get the current position
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        // Reverse geocode the position to get the address
        List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );

        // Extract the city name from the address
        cityName = placemarks.first.locality ?? "Unknown";
        return cityName;
      } catch (e) {
        print("Error: $e");
      }
    } else if (status.isDenied) {
      // Permission denied
      print("Location permission is denied.");
      return cityName;
    } else if (status.isPermanentlyDenied) {
      // Permission permanently denied
      return cityName;
      print("Location permission is permanently denied.");
      openAppSettings(); // Opens the app settings page for the user to enable permission manually
    }
    return cityName;
  }
}