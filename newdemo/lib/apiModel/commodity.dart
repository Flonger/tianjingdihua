import 'package:json_annotation/json_annotation.dart';

part 'commodity.g.dart';


List<Commodity> getCommodityList(List<dynamic> list){
  List<Commodity> result = [];
  list.forEach((item){
    result.add(Commodity.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class Commodity extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'num')
  int num;

  @JsonKey(name: 'desc')
  String desc;

  @JsonKey(name: 'price')
  String price;

  @JsonKey(name: 'unit')
  String unit;

  Commodity(this.id,this.title,this.image,this.num,this.desc,this.price,this.unit,);

  factory Commodity.fromJson(Map<String, dynamic> srcJson) => _$CommodityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommodityToJson(this);

}

  
