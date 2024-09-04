class FailureSystem implements Exception {
  final String? messageError;
  final String? title;
  final String? statusCode;
  const FailureSystem({this.title, this.messageError, this.statusCode});
}
