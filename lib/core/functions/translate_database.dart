import 'package:get/get.dart';
import 'package:shopping_online/core/services/my_services.dart';

translateDatabase(columnar,columnen){
  MyServices services = Get.find();
  if(services.preferences!.getString("lang") == "ar"){
    return columnar;
  }else{
    return columnen;

  }
}