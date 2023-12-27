import 'package:get/get.dart';
import 'package:shopping_online/core/constant/approutes.dart';
import 'package:shopping_online/core/middile_wares/my_middiles_wares.dart';
import 'package:shopping_online/views/address/add_adreess.dart';
import 'package:shopping_online/views/address/completeinfo_address.dart';
import 'package:shopping_online/views/address/edit_adress.dart';
import 'package:shopping_online/views/address/view_address.dart';
import 'package:shopping_online/views/auth/forget_password.dart';
import 'package:shopping_online/views/auth/login.dart';
import 'package:shopping_online/views/auth/reset_password.dart';
import 'package:shopping_online/views/auth/sign_up.dart';
import 'package:shopping_online/views/auth/succesresetpassword.dart';
import 'package:shopping_online/views/auth/successresetwithsignup.dart';
import 'package:shopping_online/views/auth/verfication_page.dart';
import 'package:shopping_online/views/auth/verfication_signup.dart';
import 'package:shopping_online/views/home/home_screen.dart';
import 'package:shopping_online/views/orders/detiales_orders.dart';
import 'package:shopping_online/views/orders/orders_archive.dart';
import 'package:shopping_online/views/orders/orderview.dart';
import 'package:shopping_online/views/screens/cart.dart';
import 'package:shopping_online/views/screens/checkout.dart';
import 'package:shopping_online/views/items/items_detiales.dart';
import 'package:shopping_online/views/items/items_page.dart';
import 'package:shopping_online/views/screens/languages.dart';
import 'package:shopping_online/views/screens/myfavourite.dart';
import 'package:shopping_online/views/screens/notification.dart';
import 'package:shopping_online/views/screens/offers.dart';
import 'package:shopping_online/views/screens/onboarding.dart';
import 'package:shopping_online/views/screens/tracking.dart';

List<GetPage<dynamic>>? getPages = [
  //GetPage(name: "/", page: ()=>const MyTextApp()),
//auth
  GetPage(name: "/", page:()=> const LanguagesPage(),middlewares: [MyMiddleware(),]),
  GetPage(name: AppRoutes.login, page:()=> const Login()),
  GetPage(name: AppRoutes.onBoarding, page:()=> const OnBoarding()),
  GetPage(name: AppRoutes.signUp, page:()=> const SignUp()),
  GetPage(name: AppRoutes.forgetPassword, page:()=> const ForgetPassword()),
  GetPage(name: AppRoutes.verfiy, page:()=> const Verfication()),
  GetPage(name: AppRoutes.resetPassword, page:()=> const ResetPassword()),
  GetPage(name: AppRoutes.succesResetPass, page:()=> const SuccessResetPassword()),
  GetPage(name: AppRoutes.successSignUp, page:()=> const SuccessSignUp()),
  GetPage(name: AppRoutes.verficationSignUp, page:()=> const VerficationSignUp()),
  //
  GetPage(name: AppRoutes.homePage, page:()=> const HomeScreen()),
  GetPage(name: AppRoutes.items, page:()=> const ItemsPage()),
  GetPage(name: AppRoutes.productDetiales, page:()=> const ItemsDetiales()),
  GetPage(name: AppRoutes.myFavourite, page:()=> const MyFavourite()),
  GetPage(name: AppRoutes.cart, page:()=> const CartPage()),
  //address
  GetPage(name: AppRoutes.addAddress, page:()=> const AddAdress()),
  GetPage(name: AppRoutes.editAddress, page:()=> const EditAdress()),
  GetPage(name: AppRoutes.viewAddress, page:()=> const ViewAddress()),
  GetPage(name: AppRoutes.completeAddress, page:()=> const CompleteInfoAdress()),
  GetPage(name: AppRoutes.checkout, page:()=> const CheckOut()),
  //orders
  GetPage(name: AppRoutes.pendingOrders, page:()=> const OrdersView()),
  GetPage(name: AppRoutes.archiveOrders, page:()=> const OrdersArchive()),
  GetPage(name: AppRoutes.detialesOrders, page:()=> const DetialesOrdes()),
  GetPage(name: AppRoutes.tracking, page:()=> const Tracking()),
  GetPage(name: AppRoutes.offers, page:()=> const OffersPage()),
  GetPage(name: AppRoutes.notification, page:()=> const NotificationPage()),

];