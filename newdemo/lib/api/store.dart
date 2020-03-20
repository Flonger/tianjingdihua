import 'dart:async';
import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';

import '../utils/HttpUtils.dart';
import '../apiModel/commodity.dart';

class StoreApi {

  // GET 请求
  static Future<List<Commodity>> getList() async {

    var result = await HttpUtils.request(
      '/store/list',
      method: HttpUtils.GET,
    );

    var storeJson = json.decode(result);
    List<Commodity> storeList = (storeJson['data'] as List).map((i)=>Commodity.fromJson(i)).toList();
    return storeList;
  }

}