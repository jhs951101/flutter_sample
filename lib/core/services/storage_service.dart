class StorageService {
  factory StorageService() => _instance;

  StorageService._internal();

  static final StorageService _instance = StorageService._internal();
}
