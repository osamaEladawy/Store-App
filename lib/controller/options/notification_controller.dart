import 'package:get/get.dart';
import 'package:shopping_online/core/class/status_request.dart';
import 'package:shopping_online/core/functions/handleStatus_response.dart';
import 'package:shopping_online/core/services/my_services.dart';
import 'package:shopping_online/data/data_source/data_remote/notification_data.dart';

import '../../data/model/notification_model.dart';

abstract class NotificationController extends GetxController{
back();
getNotification();

deleteNotification(int id);
}
class NotificationControllerImp extends NotificationController{
  MyServices services = Get.find();
  StatusRequest statusRequest = StatusRequest.none;
  NotificationData notificationData = NotificationData(curd: Get.find());
  List<NotificationModel>data = [];

  @override
  back() {
   Get.back();
  }

  @override
  getNotification() async {
    statusRequest = StatusRequest.loading;
    var response = await notificationData.getData(services.preferences!.getString("id")!);
    statusRequest = handleStatus(response);
    if(StatusRequest.success == statusRequest){
      if(response["status"] == "success"){
        List notify =  response["data"];
        data.addAll(notify.map((e) => NotificationModel.fromJson(e)));
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getNotification();
    super.onInit();
  }

  @override
  deleteNotification( id) {
    notificationData.deleteNotification(id);
    data.removeWhere((element) => id == element.notificationId);
    update();
  }

}