import 'package:fish_redux/fish_redux.dart';

class VideoDetailState implements Cloneable<VideoDetailState> {

  @override
  VideoDetailState clone() {
    return VideoDetailState();
  }
}

VideoDetailState initState(Map<String, dynamic> args) {
  return VideoDetailState();
}
