import 'package:dalang_mobile/feature/home/ui/explore/controller/explore_controller.dart';
import 'package:dalang_mobile/feature/home/ui/history/controller/history_controller.dart';
import 'package:dalang_mobile/feature/home/ui/home/controller/home_controller.dart';
import 'package:dalang_mobile/feature/home/ui/menu/controller/menu_controller.dart';
import 'package:dalang_mobile/feature/home/ui/timeline/controller/timeline_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';

class MenuFeatureDependencies {
  MenuFeatureDependencies() {
    _registerController();
  }

  void _registerController() {
    sl.registerFactory<MenuController>(
      () => MenuController(),
    );
    sl.registerFactory<HomeController>(
      () => HomeController(),
    );
    sl.registerFactory<ExploreController>(
      () => ExploreController(),
    );
    sl.registerFactory<TimelineController>(
      () => TimelineController(),
    );
    sl.registerFactory<HistoryController>(
      () => HistoryController(),
    );
  }
}
