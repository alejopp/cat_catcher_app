import 'package:cat_catcher_app/core/constants/app_config.dart';
import 'package:flutter/material.dart';

/// A utility class for getting paths for API endpoints.
/// This class has no constructor and all methods are `static`.
@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  static String baseUrl = AppConfig.baseUrl;

  static String breeds({
    VersionApi versionApi = VersionApi.v1,
  }) {
    const path = '/breeds';
    String version = versionApi.name;
    return '$path/$version';
  }
}

//versionApi
enum VersionApi { v1 }
