import 'package:micro_app_dependencies/micro_app_dependencies.dart';
import 'package:micro_app_http/src/client_http.dart';
import 'package:micro_app_http/src/client_interpector.dart';

import 'http_exception.dart';

class HTTPClientImpl implements ClientHttp {
  final Dio _dio = Dio();
  final _clientInterceptor = ClientInterceptor();

  HTTPClientImpl._();

  static final instance = HTTPClientImpl._();

  factory HTTPClientImpl() {
    return instance;
  }

  @override
  Future get(
      {url,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      bool authorized = true}) async {
    return _errorHandler(() async {
      final getHeader =
          headers ?? await _clientInterceptor.setHeader(authorized);
      final result = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: getHeader),
      );
      return result;
    });
  }

  @override
  Future post(
      {required url,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? body,
      bool authorized = true}) async {
    return _errorHandler(() async {
      final getHeader =
          headers ?? await _clientInterceptor.setHeader(authorized);
      final result = await _dio.post(
        url,
        queryParameters: queryParameters,
        data: body,
        options: Options(headers: getHeader),
      );

      return result;
    });
  }

  @override
  Future put(
      {required url,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? body,
      bool authorized = true}) async {
    return _errorHandler(() async {
      final getHeader =
          headers ?? await _clientInterceptor.setHeader(authorized);
      final result = await instance._dio.put(
        url,
        data: body,
        queryParameters: queryParameters,
        options: Options(headers: getHeader),
      );
      return result;
    });
  }

  @override
  Future delete(
      {required url,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? body,
      bool authorized = true}) async {
    return _errorHandler(() async {
      final getHeader =
          headers ?? await _clientInterceptor.setHeader(authorized);
      final result = await instance._dio.delete(
        url,
        data: body,
        queryParameters: queryParameters,
        options: Options(headers: getHeader),
      );
      return result;
    });
  }
}

extension on HTTPClientImpl {
  Future<T> _errorHandler<T>(Future<T> Function() method) async {
    try {
      return await method();
    } on DioException catch (e) {
      throw HttpClientException(
        error: e.error,
        code: e.response?.statusCode,
        message: e.message,
        response: e.response,
      );
    }
  }
}
