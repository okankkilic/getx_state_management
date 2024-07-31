import 'package:get/get.dart';

import '../controllers/list_controller.dart';
import '../controllers/tap_controller.dart';

Future<void> init() async {
  Get.put(() => TapController());
  Get.put(() => ListController());
}
