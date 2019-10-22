import 'dart:convert';

import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:nagarpalika_app/model/modelmain.dart';

import 'constants.dart';
import 'dioutil.dart';


Future<Npmodel> fetchdata() async {

  return dio
      .get(serverurl + "classes/npis?order=priority",
          // queryParameters: {'skip' : num*10 , 'limit' : 10 , 'order' : 'name'},
          options: buildCacheOptions(
            Duration(days : 1), maxStale: Duration(days: 5), subKey: "data")
            )
      .then((response) {
    return Npmodel.fromJson(json.decode(response.toString()));
  });
}