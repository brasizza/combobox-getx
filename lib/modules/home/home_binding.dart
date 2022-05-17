import 'package:dropdown/data/repository/combobox_repository.dart';
import 'package:dropdown/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ComboboxRepository>(() => ComboboxRepository());
  }
}
