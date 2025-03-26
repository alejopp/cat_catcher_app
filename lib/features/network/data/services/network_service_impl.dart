import 'package:cat_catcher_app/core/constants/app_config.dart';
import 'package:cat_catcher_app/features/network/data/exception_handler.dart';
import 'package:cat_catcher_app/features/network/data/services/network_service.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:cat_catcher_app/features/network/domain/entities/custom_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NetworkServiceImpl extends NetworkService with ExceptionHandler {
  final Dio dio;

  NetworkServiceImpl(this.dio) {
    dio.options = dioBaseOptions;
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );

  @override
  String get baseUrl => AppConfig.baseUrl;

  @override
  Map<String, Object> get headers => {
        'content-type': 'application/json',
        'x-api-key': dotenv.env['API_KEY'] ?? '',
      };
  @override
  Future<Either<ApiFailure, CustomResponse>> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.get(
        endpoint,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }
}
