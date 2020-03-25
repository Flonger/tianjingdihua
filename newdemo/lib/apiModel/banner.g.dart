// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(
    json['id'] as int,
    json['image'] as String,
    json['url'] as String,
    json['type'] as int,
  );
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'url': instance.url,
      'type': instance.type,
    };
