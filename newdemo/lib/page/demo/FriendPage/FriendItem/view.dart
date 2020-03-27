import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newdemo/apiModel/pet.dart';
import 'package:newdemo/page/demo/FriendPage/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FriendItemState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
    onTap: (){
      Pet pet = new Pet(state.id, state.image, state.video, state.name, state.age, state.sex, state.desc);
      dispatch(FriendPageActionCreator.toDetail(pet));
      },
    child: Hero(
      transitionOnUserGestures: true,
      tag: state.id,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            Image.network(
              state.image,
              fit: BoxFit.cover,
            ),
            Text(
              state.name,
            ),
            Text(
              state.desc,
            ),
            Text(
              state.sex==1?'雄性':'雌性',
            )
          ],
        ),
      ),
    ),
  );
}

Widget _stack (FriendItemState state) {
  return Stack(
    children: <Widget>[
      Positioned(
        top: 0,
        bottom: 20,
        right: 0,
        left: 0,
        child: Image.network(
          state.image,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        right: 10,
        bottom: 0,
        child: CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    ],
  );
}