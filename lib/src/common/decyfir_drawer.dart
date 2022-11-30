import 'package:decyfir/src/authentication/login.dart';
import 'package:decyfir/src/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DecyfirDrawer extends StatelessWidget {

  const DecyfirDrawer({super.key, required this.organisation, required this.orgEmail});

  final String organisation;
  final String orgEmail;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          UserAccountsDrawerHeader(
            //margin: EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              //color: Color(0xFFEF695F),
              //color: const Color(0xFF37474F),
              color: Theme.of(context).colorScheme.background
              //backgroundBlendMode: BlendMode.multiply
            ),
            accountName: RichText(text: TextSpan(
              children: <TextSpan> [
                TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  text: 'Organization: '
                ),
                TextSpan(text: organisation)
              ]
            )),
            //accountName: Text('Organisation: $organisation'),
            accountEmail: RichText(text: TextSpan(
              children: <TextSpan> [
                TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  text: 'Email: '
                ),
                TextSpan(text: orgEmail)
              ]
            )),
            currentAccountPictureSize: const Size.square(60),
            
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundImage: const AssetImage('assets/images/appbar_logo.png'),
            ),
            
            /*otherAccountsPictures: [
              
              CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('assets/images/appbar_logo.png')
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('assets/images/appbar_logo.png')
              )
            ],*/
          ),
          ListTile(
            //onTap: () => Navigator.restorablePushNamed(context, SettingsView.routeName),
            leading: Icon(Icons.person_sharp, color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Profile', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('View your user profile'),
          ),
          ListTile(
            onTap: () => Navigator.restorablePushNamed(context, SettingsView.routeName),
            leading: Icon(Icons.settings_cell_sharp, color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Preferences', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('Modify your user settings'),
          ),
          ListTile(
            //onTap: () => Navigator.restorablePushNamed(context, SettingsView.routeName),
            leading: Icon(Icons.question_answer_sharp, color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('FAQ\'s', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('Troubleshoot your issues'),
          ),
          const Divider(thickness: 2),
          ListTile(
            //onTap: () => Navigator.restorablePushNamed(context, SettingsView.routeName),
            leading: Icon(Icons.restore_sharp, color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Reset Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary)),
            //subtitle: const Text('Troubleshoot your issues'),
          ),
          ListTile(
            onTap: () async {
              var prefs = await SharedPreferences.getInstance();
              prefs.clear().then((value) => Navigator.pushReplacementNamed(context, Login.routeName));
            },
            leading: Icon(Icons.logout_sharp, color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Log Out', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary)),
            //subtitle: const Text('Troubleshoot your issues'),
          ),
          AboutListTile(
            applicationName: 'DeCYFIR',
            applicationVersion: 'Version 1',
            applicationLegalese: 'CYFIRMA 2022, ALL RIGHTS ARE RESERVED',
            applicationIcon: Image.asset('assets/images/appbar_logo.png', width: 50),
            icon: Icon(Icons.info_outline_rounded, color: Theme.of(context).colorScheme.primary, size: 34),
          )
          // const Chip(
          //   avatar: CircleAvatar(
          //     backgroundColor: Colors.grey,
          //     child: Text('AB'),
          //   ),
          //   label: Text('Profile')
          // )
        ],
      ),
    );
  }

}