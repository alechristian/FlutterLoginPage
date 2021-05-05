import 'package:get/get.dart';

import 'package:login_page/app/modules/help/bindings/help_binding.dart';
import 'package:login_page/app/modules/help/views/help_view.dart';
import 'package:login_page/app/modules/login/bindings/login_binding.dart';
import 'package:login_page/app/modules/login/views/login_view.dart';
import 'package:login_page/app/modules/register/bindings/register_binding.dart';
import 'package:login_page/app/modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
  ];
}
