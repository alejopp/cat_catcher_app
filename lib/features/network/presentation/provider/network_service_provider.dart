import 'package:cat_catcher_app/features/network/data/services/network_service.dart';
import 'package:cat_catcher_app/features/network/data/services/network_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkServiceProvider = Provider<NetworkService>(
  (_) {
    final Dio dio = Dio();
    return NetworkServiceImpl(dio);
  },
);
