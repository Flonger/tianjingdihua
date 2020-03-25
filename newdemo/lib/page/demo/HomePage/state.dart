import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/banner.dart';
import 'package:newdemo/page/demo/HomePage/banner/state.dart';

class homepageState implements Cloneable<homepageState> {
  String title = '';
  String topImage = '';
  int numofpeople = 0;
  String phone = '';
  String desc = '';
  String address = '';
  double lon = 0.0;
  double lat = 0.0;
  List<Banner> banners;
  @override
  homepageState clone() {
    return homepageState()
    ..banners = banners;
  }
}

homepageState initState(Map<String, dynamic> args) {
  return homepageState();
}

class HomeBannerConnector extends ConnOp<homepageState, BannerState> with ReselectMixin{
  @override
  BannerState computed(homepageState state){
    return BannerState()..banners = state.banners;
  }

  @override
  List factors(homepageState state){
    return state.banners ?? [];
  }

  @override
  void set(homepageState state, BannerState subState) {
    // TODO: implement set
//    super.set(state, subState);
  }
}