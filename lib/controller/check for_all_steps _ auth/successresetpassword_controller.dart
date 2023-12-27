
import 'package:get/get.dart';
import 'package:shopping_online/core/constant/approutes.dart';

import '../../core/class/status_request.dart';

abstract class SuccessResetPasswordController extends GetxController{
  goToLogin();
}
class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  StatusRequest statusRequest = StatusRequest.none;
  @override
  goToLogin() {
  Get.offAllNamed(AppRoutes.login);
  }

}