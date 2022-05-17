import 'package:dropdown/modules/home/home_binding.dart';
import 'package:dropdown/modules/home/home_page.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      binding: HomeBinding(),
    )
  ];
}
