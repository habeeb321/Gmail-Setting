import 'package:flutter/gestures.dart';
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
                                      width: Get.width * 0.36,
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
                                                    Constants.width10,
                                                    SizedBox(
                                                      height: 40,
                                                      child: Card(
                                                        child: Row(
                                                          children: [
                                                            const Icon(Icons
                                                                .format_size),
                                                            IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(Icons
                                                                  .arrow_drop_down),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Constants.width5,
                                                    SizedBox(
                                                      height: 40,
                                                      child: Card(
                                                        child: Row(
                                                          children: [
                                                            const Icon(Icons
                                                                .text_format),
                                                            IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(Icons
                                                                  .arrow_drop_down),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Constants.width5,
                                                    SizedBox(
                                                      height: 40,
                                                      child: Card(
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(Icons
                                                              .format_clear),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Text(
                                                  'This is what your body text will look like.',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  children: [
                                    const Text(
                                      'Stars:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: Get.width * 0.12),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: Get.width * 0.6,
                                          child: const Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text:
                                                        'Drag the stars between the lists. ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                  text:
                                                      'The stars will rotate in the order shown below when you click successively. To learn the name of a star\nfor search, hover your mouse over the image.',
                                                ),
                                              ],
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        Constants.height10,
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              const TextSpan(
                                                  text: 'Presets:         '),
                                              TextSpan(
                                                text: '1 star         ',
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 32, 104, 228),
                                                ),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {},
                                              ),
                                              TextSpan(
                                                text: '4 stars         ',
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 32, 104, 228),
                                                ),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {},
                                              ),
                                              TextSpan(
                                                text: 'all stars         ',
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 32, 104, 228),
                                                ),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {},
                                              ),
                                            ],
                                          ),
                                        ),
                                        Constants.height10,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GetBuilder<SettingController>(
                                              builder: (controller) => Row(
                                                children: [
                                                  const Text(
                                                    'In use:             ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  DragTarget<Color>(
                                                    builder: (context,
                                                        candidateData,
                                                        rejectedData) {
                                                      return Icon(
                                                        Icons.star,
                                                        color: controller
                                                                .acceptedStarColors
                                                                .isEmpty
                                                            ? const Color(
                                                                0xffF7C94B)
                                                            : controller
                                                                .acceptedStarColors
                                                                .last,
                                                      );
                                                    },
                                                    onAccept:
                                                        (Color starColor) {
                                                      controller.updateStar(
                                                          starColor);
                                                    },
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          Get.width * 0.0135),
                                                  DragTarget<Color>(
                                                    builder: (context,
                                                        candidateData,
                                                        rejectedData) {
                                                      return Icon(
                                                        Icons.star,
                                                        color: controller
                                                                .acceptedStarColors
                                                                .isEmpty
                                                            ? const Color(
                                                                0xffF7C94B)
                                                            : controller
                                                                .acceptedStarColors
                                                                .last,
                                                      );
                                                    },
                                                    onAccept:
                                                        (Color starColor) {
                                                      controller.updateStar(
                                                          starColor);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Constants.height10,
                                            Row(
                                              children: [
                                                const Text(
                                                  'Not in use:',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0135),
                                                const Draggable<Color>(
                                                  data: Color(0xffF7A14C),
                                                  feedback: Icon(
                                                    Icons.star,
                                                    color: Color(0xffF7A14C),
                                                  ),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xffF7A14C),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0135),
                                                const Draggable<Color>(
                                                  data: Color(0xffE57B72),
                                                  feedback: Icon(
                                                    Icons.star,
                                                    color: Color(0xffE57B72),
                                                  ),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xffE57B72),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0135),
                                                const Draggable<Color>(
                                                  data: Color(0xffB967C7),
                                                  feedback: Icon(
                                                    Icons.star,
                                                    color: Color(0xffB967C7),
                                                  ),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xffB967C7),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0135),
                                                const Draggable<Color>(
                                                  data: Color(0xff7AA9F7),
                                                  feedback: Icon(
                                                    Icons.star,
                                                    color: Color(0xff7AA9F7),
                                                  ),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xff7AA9F7),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0135),
                                                const Draggable<Color>(
                                                  data: Color(0xff57BA89),
                                                  feedback: Icon(
                                                    Icons.star,
                                                    color: Color(0xff57BA89),
                                                  ),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xff57BA89),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
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
