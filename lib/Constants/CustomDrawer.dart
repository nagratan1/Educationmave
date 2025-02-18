import 'package:education/Drawer%20Screen/FAQS.dart';
import 'package:education/Drawer%20Screen/Order.dart';
import 'package:education/Drawer%20Screen/TestSeries.dart';
import 'package:education/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../Dashboard/DashboardScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.Allcolor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                ' SING IN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to Home or perform actions
               Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Dashboard()),
             );
            },
          ),
          ListTile(
            leading: Icon(LucideIcons.bookOpen),
            title: Text('Test Series'),
            onTap: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Testseries()),
             );
             // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('My order'),
            onTap: () {
              // Navigate to Home or perform actions
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Order()),
             );
            },
          ),
          ListTile(
            leading: Icon(LucideIcons.swissFranc),
            title: Text('FAQ'),
            onTap: () {
              // Navigate to Home or perform actions
              Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => FAQS()),
             );
            },
          ),
          ListTile(
            leading: Icon(Icons.article_rounded),
            title: Text('Privacy Policy'),
            onTap: () {
              // Navigate to Home or perform actions
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_tree_outlined),
            title: Text('Refer/ Share App'),
            onTap: () {
              // Navigate to Home or perform actions
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.local_phone_outlined),
            title: Text('Call / Helpline'),
            onTap: () {
              // Navigate to Home or perform actions
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person_3_outlined),
            title: Text('My Profile'),
            onTap: () {
              // Navigate to Home or perform actions
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp),
            title: Text('Logout'),
            onTap: () {
              // Navigate to Settings or perform actions
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              // Navigate to About or perform actions
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
