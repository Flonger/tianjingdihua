import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/banner.dart';

class BannerState implements Cloneable<BannerState> {
  BannerState({this.banners});

  List<Banner> banners = new List<Banner>();

  @override
  BannerState clone() {
    return BannerState();
  }
}

BannerState initState(Map<String, dynamic> args) {
  List<Banner> tempList = new List<Banner>();
  return BannerState(banners: tempList);
}
