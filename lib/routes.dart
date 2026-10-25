import 'package:get/get.dart';

import 'Binding/home_binding.dart';
import 'core/Constant/app_routes.dart';
import 'view/screen/home_screen.dart';

class AppPages {
  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
