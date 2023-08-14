import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('Hello, Flutter Web App!'),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0XFFF6F8FC), // Set background to transparent
      iconTheme:
          const IconThemeData(color: Colors.black), // Set icon color to black
      leading: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Implement your menu icon action
            },
          ),
          const SizedBox(width: 20),
          const Image(
            image: AssetImage(
              'assets/logo.png',
            ),
            fit: BoxFit.cover,
            height: 30,
          ),
        ],
      ),
      title: Padding(
        padding: EdgeInsets.only(left: Get.size.width * 0.15),
        child: Container(
          height: 40,
          width: Get.size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              SizedBox(width: 8),
              Icon(Icons.search),
              SizedBox(width: 8),
              Text(
                'Search Mail',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Implement your settings icon action
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Implement your notifications icon action
          },
        ),
        IconButton(
          icon: const Icon(Icons.help),
          onPressed: () {
            // Implement your help icon action
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
}
