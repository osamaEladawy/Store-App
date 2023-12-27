import 'package:shopping_online/core/class/curd.dart';
import 'package:shopping_online/linkapi.dart';

class VerifyCodeData{
  Curd curd = Curd();

  VerifyCodeData({required this.curd});

  verficationCode(String email , String verifycode)async{
    var response = await curd.postRequest( ApiLink.verifycodeforgetpassword,{
      "email":email,
      "verifycode":verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}