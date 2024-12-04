import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  // final isExpanded = false.obs; or
  var isExpanded = false.obs;

  void toggleExpansion(){
    isExpanded.value = !isExpanded.value;
    print("Expanded value : ${isExpanded}");

  }
}
