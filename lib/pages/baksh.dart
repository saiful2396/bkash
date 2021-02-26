import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bkash extends StatefulWidget {
  @override
  _BkashState createState() => _BkashState();
}

class _BkashState extends State<Bkash> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72.0),
        child: AppBar(
          flexibleSpace: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/19409871?s=60&v=4'),
                  ),
                ),
                SizedBox(width: 14.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text('Saiful Islam',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0)),
                    SizedBox(height: 6.0),
                    Container(
                      width: 180,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            padding:
                                EdgeInsets.only(left: 6.0, top: 2, bottom: 2),
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              backgroundImage:
                                  AssetImage('assets/currency.png'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Tab for Balance',
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () => _scaffoldKey.currentState.openEndDrawer(),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/fly.png'),
                ),
              ),
            )
          ],
        ),
      ),
      endDrawer: AppDrawer(),
      body: ListView(
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child: Icon(
                              Icons.source,
                            ),
                          ),
                          Text(
                            'Send Money',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child: FaIcon(
                              FontAwesomeIcons.moneyBill,
                            ),
                          ),
                          Text(
                            'Mobile recharge',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child: FaIcon(
                              FontAwesomeIcons.handshake,
                            ),
                          ),
                          Text(
                            'Cash Out',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child: FaIcon(
                              FontAwesomeIcons.shoppingBag,
                            ),
                          ),
                          Text(
                            'Make Payment',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: FaIcon(FontAwesomeIcons.handHoldingUsd),
                            ),
                            Text(
                              'Add Money',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: FaIcon(
                                FontAwesomeIcons.lightbulb,
                              ),
                            ),
                            Text(
                              'Pay bill',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: FaIcon(
                                FontAwesomeIcons.ticketAlt,
                              ),
                            ),
                            Text(
                              'Tickets',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: FaIcon(
                                FontAwesomeIcons.thLarge,
                              ),
                            ),
                            Text(
                              'More',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6, top: 6),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My bKash'),
                        Icon(Icons.expand_less),
                      ],
                    ),
                    Divider(),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.source,
                                ),
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBill,
                                ),
                              ),
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.handshake,
                                ),
                              ),
                              Text(
                                'Cash Out',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.shoppingBag,
                                ),
                              ),
                              Text(
                                'Make Payment',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.source,
                                ),
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBill,
                                ),
                              ),
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6, top: 6),
            child: Card(
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/add.png'), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6, top: 6),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Suggestion'),
                        Icon(Icons.expand_less),
                      ],
                    ),
                    Divider(),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.source,
                                ),
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBill,
                                ),
                              ),
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.handshake,
                                ),
                              ),
                              Text(
                                'Cash Out',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.shoppingBag,
                                ),
                              ),
                              Text(
                                'Make Payment',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.source,
                                ),
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBill,
                                ),
                              ),
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6, top: 6),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Offer'),
                        Icon(Icons.expand_less),
                      ],
                    ),
                    Divider(),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.source,
                                ),
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBill,
                                ),
                              ),
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.handshake,
                                ),
                              ),
                              Text(
                                'Cash Out',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.shoppingBag,
                                ),
                              ),
                              Text(
                                'Make Payment',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.source,
                                ),
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBill,
                                ),
                              ),
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 40),
          ListTile(
            title: Text(
              'bKash Menu',
              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 200),
            child: OutlineButton(
              onPressed: () {},
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
              child: Text(
                'English',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, size: 30, color: Theme.of(context).primaryColor,),
            title: Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: Icon(Icons.bar_chart, size: 30, color: Theme.of(context).primaryColor,),
            title: Text(
              "Statement",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.logout, size: 30, color: Theme.of(context).primaryColor,),
            title: Text('LogOut'),
            onTap: (){},
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
