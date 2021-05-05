import 'package:get/get.dart';
import 'package:login_page/app/routes/app_pages.dart';

class Constants{
  static const String Help = 'Help';
  static const String Login = 'Login';
  static const String Register = 'Register';
  static const List<String> choices = <String>[
    Help,
    Login,
    Register
  ];
}
void choiceAction(String choice) {
  if (choice == Constants.Help) {
    print('Help?');
    Get.toNamed(Routes.HELP);
  } else if (choice == Constants.Login) {
    print('Login');
    Get.toNamed(Routes.LOGIN);
  } else if (choice == Constants.Register) {
    print('Register');
    Get.toNamed(Routes.REGISTER);
  }
}