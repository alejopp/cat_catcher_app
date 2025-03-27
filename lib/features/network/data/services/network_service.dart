import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:cat_catcher_app/features/network/domain/entities/custom_response.dart';
import 'package:dartz/dartz.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  Future<Either<ApiFailure, CustomResponse>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });
}
