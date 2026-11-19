import 'package:get/get.dart';

import 'Binding/home_binding.dart';
import 'core/constant/app_routes.dart';
import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';
import 'view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'view/screen/auth/forgetpassword/verifycode.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/auth/signup.dart';
import 'view/screen/auth/success_signup.dart';
import 'view/screen/auth/verifycodesignup.dart';
import 'view/screen/home_screen.dart';
import 'view/screen/language.dart';
import 'view/screen/onboarding.dart';

class AppPages {
  static final pages = <GetPage<dynamic>>[
    //   GetPage(name: "/", page: () => const HomeScreen(), binding: HomeBinding()),
    GetPage(name: "/", page: () => const Login()),

    //   == Screens ==    //
    GetPage(name: AppRoutes.language, page: () => const Language()),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoarding(),

      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(name: AppRoutes.login, page: () => const Login()),
    GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
    GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: AppRoutes.verfiyCode, page: () => const VerfiyCode()),
    GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
    GetPage(
      name: AppRoutes.successResetpassword,
      page: () => const SuccessResetPassword(),
    ),
    GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignUp()),
    GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
    GetPage(
      name: AppRoutes.verfiyCodeSignUp,
      page: () => const VerfiyCodeSignUp(),
    ),
  ];
}
