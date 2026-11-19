import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Binding/initialbindings.dart';
import 'core/constant/app_routes.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '39'.tr,
      locale: controller.language,
      translations: MyTranslation(),
      theme: controller.appTheme,
      /* theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ), */
      // initialRoute: AppRoutes.home,
      initialBinding: InitialBindings(),
      getPages: AppPages.pages,
    );
  }
}
