
import 'package:get/get.dart';

class ToggleExpansionController extends GetxController{

  var toggleText = false.obs;

  void toggleExpansion() {

      toggleText.value = !toggleText.value;

  }

}