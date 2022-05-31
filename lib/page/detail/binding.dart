import 'package:get/get.dart';

import 'logic.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailLogic());
  }
}
