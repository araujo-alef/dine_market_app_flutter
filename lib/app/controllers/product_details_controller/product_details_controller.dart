import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final productAmount = 1.obs;

  addProductAmount() {
    productAmount.value++;
  }

  removeProductAmount() {
    productAmount.value--;
  }
}