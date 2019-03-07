import 'package:dio/dio.dart';

class NetworkManager {
  static final NetworkManager _networkManager = new NetworkManager._internal();

  NetworkManager._internal();

  factory NetworkManager() {
    return _networkManager;
  }

  static NetworkManager get instance => _networkManager;






}
