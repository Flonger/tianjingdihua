import 'package:fish_redux/fish_redux.dart';

class WebPageState implements Cloneable<WebPageState> {
  String url;
  String title;
  @override
  WebPageState clone() {
    return WebPageState()..url=url..title=title;
  }
}

WebPageState initState(Map<String, dynamic> args) {
  var webPageState = WebPageState();
  webPageState..url = args['url'];
  webPageState..title = args['title'];
  return webPageState;
}
