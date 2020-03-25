import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/page/demo/HomePage/banner/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class homepagePage extends Page<homepageState, Map<String, dynamic>> {
  homepagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<homepageState>(
                adapter: null,
                slots: <String, Dependent<homepageState>>{
                  'banner':HomeBannerConnector()+BannerComponent(),
                }),
            middleware: <Middleware<homepageState>>[
            ],);

}
