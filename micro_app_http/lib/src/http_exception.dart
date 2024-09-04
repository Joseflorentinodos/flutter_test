import 'package:micro_app_dependencies/micro_app_dependencies.dart';

class HttpClientException implements Exception {
  const HttpClientException({
    this.error,
    this.code,
    this.message,
    this.response,
  });
  final Object? error;
  final int? code;
  final String? message;
  final Response<dynamic>? response;
}
