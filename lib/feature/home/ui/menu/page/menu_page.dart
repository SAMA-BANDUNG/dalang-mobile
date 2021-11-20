import 'package:dalang_mobile/feature/home/ui/explore/page/explore_page.dart';
import 'package:dalang_mobile/feature/home/ui/history/page/history_page.dart';
import 'package:dalang_mobile/feature/home/ui/home/page/home_page.dart';
import 'package:dalang_mobile/feature/home/ui/menu/controller/menu_controller.dart';
import 'package:dalang_mobile/feature/home/ui/timeline/page/timeline_page.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:dalang_mobile/shared_library/utils/color_tone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final MenuController _menuController = sl();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: _menuController.index.value,
          children: const [
            HomePage(),
            ExplorePage(),
            TimelinePage(),
            HistoryPage(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.language),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text(''),
            ),
          ],
          currentIndex: _menuController.index.value,
          onTap: (value) {
            _menuController.index(value);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ColorTone.smPrimaryGreen,
          unselectedItemColor: ColorTone.smGrey,
        ),
      ),
    );
  }
}
