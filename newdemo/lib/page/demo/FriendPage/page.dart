import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FriendPagePage extends Page<FriendPageState, Map<String, dynamic>> {
  FriendPagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FriendPageState>(
                adapter: null,
                slots: <String, Dependent<FriendPageState>>{
                }),
            middleware: <Middleware<FriendPageState>>[
            ],);

}
