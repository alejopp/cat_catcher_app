import 'package:cat_catcher_app/features/network/data/services/dio_network_service.dart';
import 'package:cat_catcher_app/features/network/domain/services/network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkServiceProvider = Provider<NetworkService>(
  (ref) {
    final Dio dio = Dio();
    return DioNetworkService(dio);
  },
);
