abstract class ClientHttp {
  Future get({
    required url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool authorized = true,
  });

  Future post({
    required url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool authorized = true,
  });

  Future put({
    required url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool authorized = true,
  });

  Future delete({
    required url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool authorized = true,
  });
}
