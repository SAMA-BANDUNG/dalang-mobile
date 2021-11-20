import 'package:dalang_mobile/feature/home/ui/menu/page/menu_page.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:get/get.dart';

List<GetPage> menuRoute() {
  return [
    GetPage(
      name: Constants.smRoute.menu,
      page: () => const MenuPage(),
    ),
  ];
}