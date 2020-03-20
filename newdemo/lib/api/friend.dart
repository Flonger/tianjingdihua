import 'dart:async';
import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/pet.dart';

import '../utils/HttpUtils.dart';

class FriendApi {

  // GET 请求
  static Future<List<Pet>> getList() async {

    var result = await HttpUtils.request(
      '/friend/list',
      method: HttpUtils.GET,
    );

    var petJson = json.decode(result);
    List<Pet> petList = (petJson['data'] as List).map((i)=>Pet.fromJson(i)).toList();
    println(petList);
    return petList;
  }

}