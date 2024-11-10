abstract class IApiService {
  Future<Map<String, dynamic>> get({
    required String url,
    Map<String, dynamic>? params,
  });
  Future<Map<String, dynamic>> post({
    required String url,
    Map<String, dynamic>? body,
  });
  Future<Map<String, dynamic>> put({
    required String url,
    Map<String, dynamic>? body,
  });
  Future<Map<String, dynamic>> delete({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  });
}
