import 'package:shopping_online/linkapi.dart';
import 'package:shopping_online/core/class/curd.dart';

class OffersData{
  Curd curd;

  OffersData({required this.curd});

  getData()async{
    var result = await curd.postRequest( ApiLink.offers, {});
    return result.fold((l) => l, (r) => r);
  }

  searchForData(String search)async{
    var result = await curd.postRequest( ApiLink.search, {
      "search" : search,
    });
    return result.fold((l) => l, (r) => r);
  }

}