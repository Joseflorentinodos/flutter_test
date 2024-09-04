import 'package:micro_app_dependencies/micro_app_dependencies.dart';
import 'package:micro_app_http/src/client_http_impl.dart';

import 'client_http.dart';
import 'client_interpector.dart';

class HttpLocator {
  final _serviceLocator = GetIt.instance;

  void initServiceLocator() {
    if (!_serviceLocator.isRegistered<Dio>()) {
      _serviceLocator.registerLazySingleton<Dio>(Dio.new);
    }
    if (!_serviceLocator.isRegistered<ClientInterceptor>()) {
      _serviceLocator
          .registerLazySingleton<ClientInterceptor>(ClientInterceptor.new);
    }
    if (!_serviceLocator.isRegistered<ClientHttp>()) {
      _serviceLocator.registerLazySingleton<ClientHttp>(HTTPClientImpl.new);
    }
    if (!_serviceLocator.isRegistered<HTTPClientImpl>()) {
      _serviceLocator.registerLazySingleton<HTTPClientImpl>(HTTPClientImpl.new);
    }
  }
}
