class ClientInterceptor {
  Future setHeader(bool authorization) async {
    var tokenApi = 'token';
    Map<String, String?> header = {};
    if (authorization) {
      header['Authorization'] = 'Bearer $tokenApi';
      header['accept'] = 'application/json';
    }
    return header;
  }
}
