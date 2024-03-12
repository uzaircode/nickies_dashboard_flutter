import 'package:flutter/material.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 25.0),
          onPressed: () {
            _showBottomSheet(context);
          },
          icon: const Icon(
            Icons.account_circle_outlined,
            size: 30,
          ),
        ),
        title: const Text(
          'nickies',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                trailing: const Text(
                  "Upcoming",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    children: [
                      Text('#1067'),
                      Text('1 Item'),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    // isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Container(
                    color: Colors.grey,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: IconButton(
                      padding: const EdgeInsets.only(left: 25.0),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Settings',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2, // Number of items in the "Settings" section
                        itemBuilder: (BuildContext context, int index) {
                          final titles = ['Bill Reporting', 'Push Notification'];
                          return Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(titles[index]),
                              trailing: const Icon(Icons.arrow_forward_ios),
                              onTap: () {},
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Support',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4, // Number of items in the "Support" section
                        itemBuilder: (BuildContext context, int index) {
                          final titles = ['Give Feedback', 'Support Centre', 'Terms & Conditions', 'Privacy Policy'];
                          return Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(titles[index]),
                              trailing: const Icon(Icons.arrow_forward_ios),
                              onTap: () {},
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add your sign-out logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                ),
                child: const Text('Sign Out'),
              ),
            ),
          ],
        ),
      );
    },
  );
}
