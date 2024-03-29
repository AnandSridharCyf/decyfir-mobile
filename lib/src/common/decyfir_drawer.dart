import 'package:decyfir/src/authentication/login.dart';
import 'package:decyfir/src/authentication/reset_password.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/faq.dart';
import 'package:decyfir/src/profile.dart';
import 'package:decyfir/src/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DecyfirDrawer extends StatefulWidget {
  const DecyfirDrawer(
      {super.key, required this.organisation, required this.orgEmail});

  final String organisation;
  final String orgEmail;

  @override
  State<DecyfirDrawer> createState() => _DecyfirDrawerState();
}

class _DecyfirDrawerState extends State<DecyfirDrawer> {
  String firstName = '',
      lastName = '',
      email = '',
      orgName = '',
      timeZone = '',
      phone = '',
      createdDate = '';

  @override
  void initState() {
    super.initState();
    SharedPreferencesHandler()
        .getString('orgName')
        .then((value) => setState(() => orgName = value));
    SharedPreferencesHandler()
        .getString('username')
        .then((value) => setState(() => email = value));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            //margin: EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                //color: Color(0xFFEF695F),
                //color: const Color(0xFF37474F),
                color: Theme.of(context).colorScheme.secondary
                //backgroundBlendMode: BlendMode.multiply
                ),
            accountName: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  text: 'Organization: '),
              TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                  ),
                  text: orgName)
            ])),
            //accountName: Text('Organisation: $organisation'),
            accountEmail: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  text: 'Email: '),
              TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                  ),
                  text: email)
            ])),
            currentAccountPictureSize: const Size.square(60),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.background,
              backgroundImage:
                  const AssetImage('assets/images/appbar_logo.png'),
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
            onTap: () =>
                Navigator.restorablePushNamed(context, Profile.routeName),
            leading: Icon(Icons.person_sharp,
                color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Profile',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('View your user profile'),
          ),
          ListTile(
            onTap: () =>
                Navigator.restorablePushNamed(context, SettingsView.routeName),
            leading: Icon(Icons.settings_cell_sharp,
                color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Preferences',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('Modify your user settings'),
          ),
          ListTile(
            onTap: () =>
                Navigator.restorablePushNamed(context, FaqView.routeName),
            leading: Icon(Icons.question_answer_sharp,
                color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('FAQ\'s',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('Troubleshoot your issues'),
          ),
          const Divider(thickness: 2),
          ListTile(
            onTap: (() => Navigator.restorablePushNamed(
                context, ResetPassword.routeName,
                arguments: true)),
            leading: Icon(Icons.restore_sharp,
                color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Reset Password',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('Send reset link to email'),
          ),
          ListTile(
            onTap: () async {
              var prefs = await SharedPreferences.getInstance();
              prefs.clear().then((value) =>
                  Navigator.pushReplacementNamed(context, Login.routeName));
            },
            leading: Icon(Icons.logout_sharp,
                color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('Log Out',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary)),
            subtitle: const Text('End your session securely'),
            //subtitle: const Text('Troubleshoot your issues'),
          ),
          ListTile(
            onTap: (() {
              showGeneralDialog(
                  context: context,
                  //barrierColor: Colors.black38,
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, animation2) {
                    return SimpleDialog(
                      title: const Text('About DeCYFIR'),
                      titlePadding: const EdgeInsets.fromLTRB(20, 12, 20, 5),
                      contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 12),
                      titleTextStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary),
                      children: const <Widget> [
                        Text('Version 1'),
                        Text('CYFIRMA 2023, ALL RIGHTS ARE RESERVED')
                      ],
                    );
                  });
            }),
            leading: Icon(Icons.info_outline_rounded,
                color: Theme.of(context).colorScheme.primary, size: 34),
            title: Text('About DeCYFIR',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary)),
          ),
          /*AboutListTile(
            applicationName: 'DeCYFIR',
            applicationVersion: 'Version 1',
            applicationLegalese: 'CYFIRMA 2023, ALL RIGHTS ARE RESERVED',
            dense: true,
            aboutBoxChildren: [

            ],
            applicationIcon:
                Image.asset('assets/images/appbar_logo.png', width: 50),
            icon: Icon(Icons.info_outline_rounded,
                color: Theme.of(context).colorScheme.primary, size: 34),
          )*/
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
