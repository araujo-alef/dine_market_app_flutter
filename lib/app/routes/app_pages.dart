import 'package:dine_market/app/bindings/home_bindings.dart';
import 'package:dine_market/app/ui/android/product_details/product_details_page.dart';
import 'package:get/get.dart';

import 'package:dine_market/app/ui/android/home/home_page.dart';

part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBindings(),),
    GetPage(name: Routes.PRODUCTDETAILS, page: () => ProductDetailsPage(),)
  ];
}