import 'package:get/get.dart';

import '../views/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        title: "Home",
        name: Routes.home,
        page: () => const HomeView(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 400)),
  ];
}
