import 'package:shopping_online/core/class/curd.dart';
import 'package:shopping_online/linkapi.dart';


class MyFavoriteData{
  Curd curd;
  MyFavoriteData({required this.curd});

  myFavorite(String userid)async{
    var response = await curd.postRequest(ApiLink.viewFav, {
      'userid' : userid
    });
    return response.fold((l) => l, (r) => r);
  }

  deleteFromFavorite(int id)async{
    var response = await curd.postRequest(ApiLink.deleteFromFav, {
      'id' : id.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }

  search(String search)async{
    var response = await curd.postRequest(ApiLink.search, {
      'search' : search
    });
    return response.fold((l) => l, (r) => r);
  }

}