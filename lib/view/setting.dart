import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_settings/controller/setting_controller.dart';
import 'package:gmail_settings/core/constants.dart';
import 'package:gmail_settings/view/widgets/custom_app_bar.dart';
import 'package:gmail_settings/view/widgets/left_section.dart';
import 'package:gmail_settings/view/widgets/right_section.dart';

class MyHomePage extends GetView<SettingController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingController());
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FC),
      key: Constants.scaffoldKey,
      appBar: const CustomAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                LeftSection(),
                RightSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
