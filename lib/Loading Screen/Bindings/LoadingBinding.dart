import 'package:anime_app/Loading%20Screen/Controller/Loading_controller.dart';
import 'package:get/get.dart';

class LoadingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingController());
  }

}