import 'dart:async';
import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';

import '../utils/HttpUtils.dart';

class HomePageApi {

  // GET 请求
  static Future<Map<String, Object>> getInfo() async {

    var result = await HttpUtils.request(
      '/homepage/info',
      method: HttpUtils.GET,
    );

    Map homeInfoJson = json.decode(result)['data'];
    return homeInfoJson;
  }

}