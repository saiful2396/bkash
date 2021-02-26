import 'package:bkash/pages/baksh.dart';
import 'package:flutter/material.dart';

import 'settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Bkash(),
    Inbox(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Bkash(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.qr_code,
          color: Theme.of(context).primaryColor,
          size: 38,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        color: Theme.of(context).primaryColor,
        child: Container(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Bkash(); // if user taps on this dashboard tab will be active
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home_outlined,
                      size: currentTab == 0 ? 30 : 25,
                      color:
                          currentTab == 0 ? Colors.white : Colors.grey.shade200,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentTab == 0
                            ? Colors.white
                            : Colors.grey.shade200,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Scan QR',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              // Right Tab bar icons
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Inbox(); // if user taps on this dashboard tab will be active
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.forward_to_inbox,
                      size: currentTab == 1 ? 30 : 25,
                      color:
                          currentTab == 1 ? Colors.white : Colors.grey.shade200,
                    ),
                    Text(
                      'Inbox',
                      style: TextStyle(
                        color: currentTab == 1
                            ? Colors.white
                            : Colors.grey.shade200,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
