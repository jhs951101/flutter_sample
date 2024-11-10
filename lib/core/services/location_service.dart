class LocationService {
  factory LocationService() => _instance;

  LocationService._internal();

  static final LocationService _instance = LocationService._internal();
}
