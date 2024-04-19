import 'package:get/route_manager.dart';
import 'package:halagula_app/src/bindings/forgotpasswordBinding.dart';
import 'package:halagula_app/src/bindings/signupBinding.dart';
import 'package:halagula_app/src/bindings/wellcomeBinding.dart';
import 'package:halagula_app/src/ui/view/forgotPasswordScreen.dart';
import 'package:halagula_app/src/ui/view/home.dart';
import 'package:halagula_app/src/ui/view/signupScreen.dart';
import 'package:halagula_app/src/ui/view/splashScreen.dart';
import 'package:halagula_app/src/ui/view/wellcomeScreen.dart';
import 'package:halagula_app/src/utils/routes/appRoutes.dart';

import '../../bindings/signinBinding.dart';
import '../../ui/view/signinScreen.dart';

class AppPages {
  static const String INITIAL = Routes.splashscreen;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.splashscreen,
        page: () => const SplashScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.wellcomescreen,
        binding: WellcomeBinding(),
        page: () => const WellcomeScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.signup,
        binding: SignUpBinding(),
        page: () => SignUpScreen(),
        transition: Transition.noTransition),

        GetPage(
        name: Routes.signin,
        binding: SignInBinding(),
        page: () => SignInScreen(),
        transition: Transition.noTransition),

        GetPage(
        name: Routes.forgotpassword,
        binding: ForgotpasswordBinding(),
        page: () => ForgotPasswordScreen(),
        transition: Transition.noTransition),

          GetPage(
        name: Routes.home,
        binding: WellcomeBinding(),
        page: () =>  Home(),
        transition: Transition.noTransition
        ),

  ];
}
