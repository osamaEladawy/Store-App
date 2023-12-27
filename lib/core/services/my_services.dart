import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService{  
  //input in the class any thing , i want show to user when starting application,
  SharedPreferences? preferences;

  //create function (return subtyp of class) to initialize the shared preferences,
Future<MyServices> init()async{

  await Firebase.initializeApp(options:Platform.isAndroid || Platform.isIOS ?
 const FirebaseOptions(
      apiKey: "AIzaSyC4VG2va8lUzedHD7tHxgulDahl1ViIIuw",
      appId: "1:97878489717:android:94ae4122524e6da228d63c",
      messagingSenderId: "97878489717",
      projectId: "shopping-8d4bd",
      storageBucket: "shopping-8d4bd.appspot.com") : null
  );
  preferences = await SharedPreferences.getInstance();
  return this;
}
/*
create function to used to main to intitialize this class,
and show my services when starting application
*/
initializeService()async{
  await Get.putAsync(() => MyServices().init(),);
}


}