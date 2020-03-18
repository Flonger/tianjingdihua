import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';



Widget buildView(homepageState state, Dispatch dispatch, ViewService viewService) {
  YYDialog.init(viewService.context);
  return ListView(
    children: [
      Image.asset(
        'res/lake.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
      titleSection,
      buttonSection(dispatch),
      textSection,
    ],
  );
}
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                '杭州天精地华宠乐园',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              '地址：',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
//      Icon(
//        Icons.star,
//        color: Colors.red[100],
//      ),
//      Text('41'),
    ],
  ),
);


Widget buttonSection(Dispatch dispatch){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, 'CALL', '确定打电话给15632363958？', ()=>dispatch(homepageActionCreator.callClick())),
        _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE', '确定导航到宠乐园？',()=>dispatch(homepageActionCreator.routeClick())),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE', '',()=>dispatch(homepageActionCreator.shareClick())),
      ],
    ),
  );
}

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

Widget _buildButtonColumn(Color color, IconData icon, String label, String dialogText,Function tap) {
  return GestureDetector(
    onTap: (){
      if (dialogText.length > 0){
        YYAlertDialogBody(dialogText, tap);
      }else{
        tap;
      }
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    ),
  );
}

YYDialog YYAlertDialogBody(String string, Function confirm) {
  return YYDialog().build()
    ..width = 220
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(25.0),
      alignment: Alignment.center,
      text: string,
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    )
    ..divider()
    ..doubleButton(
      padding: EdgeInsets.only(top: 10.0),
      gravity: Gravity.center,
      withDivider: true,
      text1: "取消",
      color1: Colors.black87,
      fontSize1: 14.0,
      fontWeight1: FontWeight.bold,
      onTap1: () {
        print("取消");
      },
      text2: "确定",
      color2: Colors.black87,
      fontSize2: 14.0,
      fontWeight2: FontWeight.bold,
      onTap2: confirm,
    )
    ..show();
}