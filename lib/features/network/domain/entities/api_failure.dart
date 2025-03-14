class ApiFailure implements Exception {
  final int? statusCode;
  final String? statusMessage;
  final String? identifier;

  ApiFailure({
    this.statusCode,
    this.statusMessage,
    this.identifier,
  });

  @override
  String toString() {
    return 'ApiFailure('
        'statusCode: $statusCode, '
        'statusMessage: $statusMessage, '
        'statusDescription: $identifier, '
        ')';
  }
}
