import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';


List<Banner> getBannerList(List<dynamic> list){
  List<Banner> result = [];
  list.forEach((item){
    result.add(Banner.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class Banner extends Object{

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'type')
  int type;

  Banner(this.id,this.image,this.url,this.type,);

  factory Banner.fromJson(Map<String, dynamic> srcJson) => _$BannerFromJson(srcJson);

}


