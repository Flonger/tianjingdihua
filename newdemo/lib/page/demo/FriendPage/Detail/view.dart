import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newdemo/apiModel/pet.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FriendDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        CustomScrollView(
          slivers: <Widget>[
            buildSliverHead(state),
            SliverToBoxAdapter(child: buildDetail()),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(viewService.context).padding.top,
          ),
          child: SizedBox(
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(viewService.context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
  return Scaffold(
      appBar: AppBar(
        title: Text('爱宠详情'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          child: Text(
            state.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepOrange,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      )
  );
}

Widget buildSliverHead(FriendDetailState state) {
  final double expandedHeight = 400;
  final double roundedContainerHeight = 50;
  return SliverPersistentHeader(
    delegate: DetailSliverDelegate(
      expandedHeight,
      roundedContainerHeight,
      state.pet,
    ),
  );
}

Widget buildDetail() {
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildUserInfo(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          child: Text(
            'Creates insets with symmetrical vertical and horizontal offsets.' * 30,
            style: TextStyle(
              color: Colors.black26,
              height: 1.4,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildUserInfo() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 24,
      backgroundImage: AssetImage('images/owl.jpg'),
    ),
    title: Text('XuYisheng'),
    subtitle: Text('zhujia'),
    trailing: Icon(Icons.share),
  );
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;
  Pet pet;

  DetailSliverDelegate(this.expandedHeight, this.roundedContainerHeight, this.pet);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Hero(
        transitionOnUserGestures: true,
        tag: pet.id,
        child: Stack(
          children: <Widget>[
            Image.network(
              pet.image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: expandedHeight - roundedContainerHeight - shrinkOffset,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: roundedContainerHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Positioned(
              top: expandedHeight - 120 - shrinkOffset,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    pet.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    pet.sex==1?'雄性':'雌性',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}