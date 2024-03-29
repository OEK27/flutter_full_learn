import 'package:dio/dio.dart';

class ProjectNetworkManager {
  ProjectNetworkManager._() {
    //singleton lazy
    _dio = Dio(BaseOptions(baseUrl: 'pub.dev'));

    _dio.options = BaseOptions();
  }

  late final Dio _dio;

  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get service => _dio;

  void addBaseHeaderToToken(String token) {
    _dio.options = _dio.options.copyWith(headers: {'Authorization': token});
  }
}

//singleton eagle
class DurationManager {
  DurationManager._();
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) {
      return _manager!;
    }
    _manager = DurationManager._();
    return _manager!;
  }
}
