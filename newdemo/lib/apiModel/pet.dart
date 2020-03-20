import 'package:json_annotation/json_annotation.dart';

part 'pet.g.dart';


List<Pet> getPetList(List<dynamic> list){
  List<Pet> result = [];
  list.forEach((item){
    result.add(Pet.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class Pet extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'video')
  String video;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'age')
  String age;

  @JsonKey(name: 'sex')
  int sex;

  @JsonKey(name: 'desc')
  String desc;

  Pet(this.id,this.image,this.video,this.name,this.age,this.sex,this.desc,);

  factory Pet.fromJson(Map<String, dynamic> srcJson) => _$PetFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PetToJson(this);

}


