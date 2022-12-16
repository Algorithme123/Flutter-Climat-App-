import 'package:geolocator/geolocator.dart';

class Longitude{
  double ? longitude;
  double ? latitude;

  Future<void> getCurrentLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    latitude = position.latitude;
    longitude = position.longitude;
    print(position);
  }

}