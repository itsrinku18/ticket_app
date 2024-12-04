import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // change our index for bottomNavBar
  var selectedIndex = 0.obs; // declare variable is reactive we used obx
// int x =0 This variable is not reactive.

  void onItemTapped(int index) {
    print("My index is $index ");
    selectedIndex.value = index; // value

  }
}
