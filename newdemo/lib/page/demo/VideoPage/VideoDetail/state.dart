import 'package:fish_redux/fish_redux.dart';

class VideoDetailState implements Cloneable<VideoDetailState> {
  String indexID = '';
  @override
  VideoDetailState clone() {
    return VideoDetailState();
  }
}

VideoDetailState initState(Map<String, dynamic> args) {
  println(args);
  var videoDetailState = VideoDetailState();
  videoDetailState..indexID = args['id'];
  return videoDetailState;
}
