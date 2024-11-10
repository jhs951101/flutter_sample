import 'dart:convert';
import 'dart:io';

import 'package:http/io_client.dart';
import '../../config/app_config.dart';
import '../core.dart';
import 'i_api_service.dart';

class ApiService implements IApiService {
  static String apiBase = AppConfig().apiBaseUrl;

  IOClient _client() {
    final ioc = HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

    final http = IOClient(ioc);
    return http;
  }

  @override
  Future<Map<String, dynamic>> get({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    final http = _client();

    final uri = Uri.parse('$apiBase$url?${Uri(queryParameters: params).query}');

    logger(
      '[GET REQUEST] \nurl :: $url\nparams :: $params',
    );

    final response = await http.get(
      uri,
      headers: {
        'content-Type': 'application/json',
      },
    );
    final json =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    logger(
      '[GET RESPONSE] \njson :: $json',
    );
    return json;
  }

  @override
  Future<Map<String, dynamic>> post({
    required String url,
    Map<String, dynamic>? body,
  }) async {
    final http = _client();

    final uri = Uri.parse(apiBase + url);

    final response = await http.post(
      uri,
      headers: {
        'content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );
    final json =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    logger(
      '[POST REQUEST] \nurl :: $url\nbody :: $body',
    );
    logger(
      '[POST RESPONSE] \njson :: $json',
    );
    return json;
  }

  @override
  Future<Map<String, dynamic>> put({
    required String url,
    Map<String, dynamic>? body,
  }) async {
    final http = _client();

    final uri = Uri.parse(apiBase + url);

    final response = await http.put(
      uri,
      headers: {
        'content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );
    final json =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    logger(
      '[PUT REQUEST] \nurl :: $url\nbody :: $body',
    );
    logger(
      '[PUT RESPONSE] \njson :: $json',
    );
    return json;
  }

  @override
  Future<Map<String, dynamic>> delete({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  }) async {
    final http = _client();

    final uri = Uri.parse(apiBase + url);

    final response = await http.delete(
      uri,
      headers: {
        'content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );
    final json =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    logger(
      '[DELETE REQUEST] \nurl :: $url\nparams :: $params\nbody :: $body',
    );
    logger(
      '[DELETE RESPONSE] \njson :: $json',
    );
    return json;
  }
}
