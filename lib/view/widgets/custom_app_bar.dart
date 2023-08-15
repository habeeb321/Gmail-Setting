import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_settings/core/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0XFFF6F8FC), // Set background to transparent
      iconTheme: const IconThemeData(
          color: Color(0xff71767C)), // Set icon color to black
      leading: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Constants.scaffoldKey.currentState?.openDrawer();
            },
          ),
          const SizedBox(width: 20),
          const Image(
            image: AssetImage(
              'assets/logo.png',
            ),
            fit: BoxFit.cover,
            height: 25,
          ),
        ],
      ),

      title: Padding(
        padding: EdgeInsets.only(left: Get.size.width * 0.145),
        child: Container(
          height: 40,
          width: Get.size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Implement your help icon action
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Search Mail',
                style: TextStyle(color: Colors.grey),
                overflow: TextOverflow.fade,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.tune),
                onPressed: () {
                  // Implement your help icon action
                },
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: () {
            // Implement your help icon action
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Implement your settings icon action
          },
        ),
        IconButton(
          icon: const Icon(Icons.apps),
          onPressed: () {
            // Implement your notifications icon action
          },
        ),
        const CircleAvatar(
          backgroundImage: AssetImage(
            'assets/profile_image.png', // Replace with your actual image path
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Your Name"),
            accountEmail: Text("your@email.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_image.png'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Implement settings action here
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help'),
            onTap: () {
              // Implement help action here
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTile widgets for other drawer items as needed
        ],
      ),
    );
  }
}
