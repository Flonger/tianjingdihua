import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(VideoDetailState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    appBar: AppBar(
      title: Text('视频详情'),
      backgroundColor: Colors.black87,
    ),
    body: Center(
      child: ListView(
          children: <Widget>[
            buildIjkPlayer(state.controller),
            Container(
              child: Text(
                '摄像头'+state.indexID,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            FloatingActionButton(
              child: Icon(Icons.play_arrow),
              onPressed: () async {
                await state.controller.setNetworkDataSource(
//                    'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
                    // 'rtmp://172.16.100.245/live1',
                    // 'https://www.sample-videos.com/video123/flv/720/big_buck_bunny_720p_10mb.flv',
//              "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
                    // 'http://184.72.239.149/vod/smil:BigBuckBunny.smil/playlist.m3u8',
                    // "file:///sdcard/Download/Sample1.mp4",
                    'http://hls01open.ys7.com/openlive/f01018a141094b7fa138b9d0b856507b.hd.m3u8',
                    autoPlay: true);
                print("set data source success");
                // controller.playOrPause();
              },
            ),
          ]
      ),
    )
  );
}
Widget buildIjkPlayer(IjkMediaController controller) {
  return Container(
     height: 400, // 这里随意
    child: IjkPlayer(
      mediaController: controller,
    ),
  );
}