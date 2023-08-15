import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_settings/controller/setting_controller.dart';
import 'package:gmail_settings/core/constants.dart';

class RightSection extends GetView<SettingController> {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingController());
    return Expanded(
      child: Container(
        height: Get.height,
        decoration: BoxDecoration(
          color: Constants.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 20, color: Constants.black),
              ),
              DefaultTabController(
                length: 10, // Number of tabs
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Constants.black, // Set tab label color
                      tabs: [
                        Tab(text: 'General'),
                        Tab(text: 'Labels'),
                        Tab(text: 'Inbox'),
                        Tab(text: 'Accounts and Import'),
                        Tab(text: 'Filters and Blocked Addresses'),
                        Tab(text: 'Forwarding and POP/IMAP'),
                        Tab(text: 'Add-ons'),
                        Tab(text: 'Chat and Meet'),
                        Tab(text: 'Advanced'),
                        Tab(text: 'Office'),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .8,
                      child: TabBarView(
                        children: [
                          // Widgets for each tab's content go here
                          // Replace these with your actual content widgets
                          Obx(
                            () => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Constants.height10,
                                const Text('Themes'),
                                const Divider(),
                                Row(
                                  children: [
                                    const Text(
                                      'Language:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: Get.width * 0.1),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Gmail display language:',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            DropdownButton<String>(
                                              value: controller
                                                  .selectedLanguage.value,
                                              onChanged: (newValue) {
                                                controller
                                                    .updateLanguage(newValue);
                                              },
                                              items: controller.languageOptions
                                                  .map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String language) {
                                                return DropdownMenuItem<String>(
                                                  value: language,
                                                  child: Text(language),
                                                );
                                              }).toList(),
                                            ),
                                            Constants.width10,
                                            const Text(
                                              'Change language setting for other google porducts',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 32, 104, 228)),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          'Show all language options',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 32, 104, 228)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  children: [
                                    const Text(
                                      'Phone numbers:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: Get.width * 0.075),
                                    Obx(
                                      () => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                'Default country code:',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(width: 10),
                                              DropdownButton<String>(
                                                value: controller
                                                    .selectedCountry.value,
                                                onChanged: (newValue) {
                                                  controller
                                                      .updateCountry(newValue);
                                                },
                                                items: controller.countryOptions
                                                    .map<
                                                            DropdownMenuItem<
                                                                String>>(
                                                        (String language) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: language,
                                                    child: Text(language),
                                                  );
                                                }).toList(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Default text style:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Constants.height5,
                                        Text(
                                          "(Use the 'Remove formatting' button on\n the toolbar to reset the default text\n style)",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width * 0.013),
                                    SizedBox(
                                      height: 70,
                                      width: Get.width * 0.3,
                                      child: Material(
                                        elevation:
                                            4, // Adjust the elevation value as needed
                                        color: Constants.white,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 1, horizontal: 10),
                                          child: Obx(
                                            () => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    DropdownButton<String>(
                                                      value: controller
                                                          .selectedFontStyle
                                                          .value,
                                                      onChanged: (newValue) {
                                                        controller
                                                            .updateFontStyle(
                                                                newValue);
                                                      },
                                                      items: controller
                                                          .fontStyleOptions
                                                          .map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              language) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: language,
                                                          child: Text(language),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ],
                                                ),
                                                const Text(
                                                    'This is what your body text will look like.'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                          const Center(
                            child: Text('Labels Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Inbox Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Accounts and Import Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text(
                                'Filters and Blocked Addresses Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Forwarding and POP/IMAP Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Add-ons Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Chat and Meet Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Advanced Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Office Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
