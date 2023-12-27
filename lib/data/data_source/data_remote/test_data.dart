import 'package:shopping_online/linkapi.dart';
import 'package:shopping_online/core/class/curd.dart';

class TestData{
   Curd curd;

   TestData({required this.curd});

   getData()async{
      var result = await curd.postRequest( ApiLink.test, {});
      return result.fold((l) => l, (r) => r);
   }
}