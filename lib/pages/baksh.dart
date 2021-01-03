import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bkash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent.withOpacity(0.2),
            child: Icon(Icons.person),
          ),
          title: Text(
            'Name',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      endDrawer: Drawer(),
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
            padding: const EdgeInsets.only(left:6.0, right: 6, top: 6),
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
            padding: const EdgeInsets.only(left:6.0, right: 6, top: 6),
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
            padding: const EdgeInsets.only(left:6.0, right: 6, top: 6),
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
            padding: const EdgeInsets.only(left:6.0, right: 6, top: 6),
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