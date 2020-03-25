import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/page/demo/BusinessPage/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BusinessPage extends Page<BusinessState, Map<String, dynamic>> {
  BusinessPage()
      : super(
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
    dependencies: Dependencies<BusinessState>(
        adapter: NoneConn<BusinessState>() + CommodityAdapter(),
        slots: <String, Dependent<BusinessState>>{
        }),
    middleware: <Middleware<BusinessState>>[
    ],);

}