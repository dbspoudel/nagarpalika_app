import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

import 'constants.dart';


DioCacheManager _manager = DioCacheManager(CacheConfig());
var dio = Dio(BaseOptions(
    headers: header,
    contentType:
        ContentType.parse("application/x-www-form-urlencoded; charset=utf-8")))
  ..interceptors.add(_manager.interceptor);
