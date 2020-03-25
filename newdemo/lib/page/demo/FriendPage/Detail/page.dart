import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FriendDetailPage extends Page<FriendDetailState, Map<String, dynamic>> {
  FriendDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FriendDetailState>(
                adapter: null,
                slots: <String, Dependent<FriendDetailState>>{
                }),
            middleware: <Middleware<FriendDetailState>>[
            ],);

}
