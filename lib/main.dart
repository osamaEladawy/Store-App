import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_online/bidding.dart';
import 'package:shopping_online/core/localization/localTranslation.dart';
import 'package:shopping_online/core/localization/translation.dart';
import 'package:shopping_online/core/services/my_services.dart';
import 'package:shopping_online/routes.dart';
import 'package:shopping_online/test_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //initialize service class, to can used my Services in my application,
   await MyServices().initializeService();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   /* initialize my Local controller,
   to can i used the language  and change and controller it , in my application*/
    LocalLanguagesController controller = Get.put(LocalLanguagesController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:controller.appTheme,
      translations: MyTransactions(),
      locale: controller.language,
        getPages: getPages,
       initialBinding: MyBidding(),
       //home: const CheckoutPage()
    );
  }
}


