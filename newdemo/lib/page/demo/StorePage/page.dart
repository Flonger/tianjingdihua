import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StorePagePage extends Page<StorePageState, Map<String, dynamic>> {
  StorePagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StorePageState>(
                adapter: null,
                slots: <String, Dependent<StorePageState>>{
                }),
            middleware: <Middleware<StorePageState>>[
            ],);

}
