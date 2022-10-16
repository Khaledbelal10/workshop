import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_appbar.dart';
import 'in settings/faq.dart';
import 'in settings/logout.dart';
import 'in settings/our_parenter.dart';
import 'in settings/support.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(7.h),
          child: const DefaultAppbar(
            title: 'SETTING',
          )),
      body: ListView(
        children: [
          Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FaqScreen()));
                },
                leading: const Text(
                  'FAQ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Text(
                  'Terms&Conditions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const OurpartnersScreen()));
                },
                leading: const Text(
                  'Our Partners',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SupportScreen()));
                },
                leading: const Text(
                  'Support',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LogoutScreen()));
                },
                leading: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}