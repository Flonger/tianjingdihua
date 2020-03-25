import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';

class VideoDetailState implements Cloneable<VideoDetailState> {
  String indexID = '';
  IjkMediaController controller;

  @override
  VideoDetailState clone() {
    return VideoDetailState();
  }
}

VideoDetailState initState(Map<String, dynamic> args) {
  println(args);
  var videoDetailState = VideoDetailState();
  videoDetailState..controller = IjkMediaController();
  videoDetailState..indexID = args['id'];
  return videoDetailState;
}
