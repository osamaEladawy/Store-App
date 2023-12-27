import 'package:get/get.dart';
import 'package:shopping_online/core/class/curd.dart';

class MyBidding extends Bindings{
  @override
  void dependencies() {
    Get.put(Curd());
  }

}