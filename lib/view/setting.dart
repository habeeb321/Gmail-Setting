import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_settings/controller/setting_controller.dart';
import 'package:gmail_settings/core/constants.dart';
import 'package:gmail_settings/view/widgets/custom_app_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MyHomePage extends GetView<SettingController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingController());
    return Scaffold(
      key: Constants.scaffoldKey,
      appBar: const CustomAppBar(),
      drawer: _drawer(Get.height, Get.width, context),
      body: const Center(
        child: Text(
          'Gmail Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  _drawer(var h, var w, BuildContext context) {
    return Drawer(
      width: 100,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: h),
          child: IntrinsicHeight(
            child: NavigationRail(
              leading: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).viewPadding.top,
                  ),
                  const Icon(
                    Icons.admin_panel_settings,
                    size: 45,
                    color: Constants.orange,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Divider(
                        thickness: 2,
                      ))
                ],
              ),
              minWidth: 60,
              backgroundColor: Colors.white12,
              selectedIndex: controller.selectedIndex.value,
              unselectedLabelTextStyle:
                  const TextStyle(color: Constants.orange),
              selectedLabelTextStyle: const TextStyle(
                color: Constants.green,
              ),
              // groupAlignment: groupAligment,
              onDestinationSelected: (int index) {
                controller.selectedIndex.value = index;

                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: controller.list[controller.selectedIndex.value],
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              labelType: NavigationRailLabelType.all,
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(
                    Icons.people_alt_outlined,
                    color: Constants.orange,
                  ),
                  selectedIcon: Icon(
                    Icons.people_alt_outlined,
                    color: Constants.green,
                  ),
                  label: Text('Inbox'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.group_add,
                    color: Constants.orange,
                  ),
                  selectedIcon: Icon(
                    Icons.group_add,
                    color: Constants.green,
                  ),
                  label: Text(
                    'Starred',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
