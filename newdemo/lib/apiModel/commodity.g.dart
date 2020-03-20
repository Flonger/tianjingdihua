// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commodity _$CommodityFromJson(Map<String, dynamic> json) {
  return Commodity(
    json['id'] as String,
    json['title'] as String,
    json['image'] as String,
    json['num'] as int,
    json['desc'] as String,
    json['price'] as String,
    json['unit'] as String,
  );
}

Map<String, dynamic> _$CommodityToJson(Commodity instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'num': instance.num,
      'desc': instance.desc,
      'price': instance.price,
      'unit': instance.unit,
    };
