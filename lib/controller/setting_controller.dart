import 'package:get/get.dart';
import 'package:gmail_settings/view/inbox.dart';
import 'package:gmail_settings/view/starred.dart';

class SettingController extends GetxController {
  final selectedIndex = 0.obs;
  final list = [
    const InboxScreen(),
    const StarredScreen(),
  ].obs;
}
