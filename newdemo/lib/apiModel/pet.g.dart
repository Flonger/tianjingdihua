// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map<String, dynamic> json) {
  return Pet(
    json['id'] as String,
    json['image'] as String,
    json['video'] as String,
    json['name'] as String,
    json['age'] as String,
    json['sex'] as int,
    json['desc'] as String,
  );
}

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'video': instance.video,
      'name': instance.name,
      'age': instance.age,
      'sex': instance.sex,
      'desc': instance.desc,
    };
