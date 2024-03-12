import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nickies_dashboard_flutter/view/home/home_page_controller.dart';
import 'package:nickies_dashboard_flutter/view/inventory/inventory_page.dart';
import 'package:nickies_dashboard_flutter/view/order/order_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                OrderPage(),
                InventoryPage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
              border: const Border(
                top: BorderSide(color: Color.fromARGB(255, 208, 208, 208), width: 1.0),
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: controller.tabIndex,
              onTap: (value) => {
                controller.changeTabIndex(value),
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.settings, size: 30), label: 'Settings'),
              ],
            ),
          ),
        );
      },
    );
  }
}
