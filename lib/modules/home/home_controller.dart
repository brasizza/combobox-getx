import 'package:dropdown/data/repository/combobox_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _items = <String>[].obs;

  final _comboSelect = ''.obs;
  String get comboSelect => _comboSelect.value;
  set comboSelect(String newValue) => _comboSelect(newValue);

  List<String> get items => _items;
  @override
  void onInit() {
    _items.clear();
    _items.addAll(Get.find<ComboboxRepository>().items);
    super.onInit();
  }
}
