import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  static const routeName = '/profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String firstName = '',
      lastName = '',
      email = '',
      orgName = '',
      timeZone = '',
      phone = '',
      createdDate = '';

  @override
  void initState() {
    SharedPreferencesHandler()
        .getString('firstName')
        .then((value) => setState(() => firstName = value));
    SharedPreferencesHandler()
        .getString('lastName')
        .then((value) => setState(() => lastName = value));
    SharedPreferencesHandler()
        .getString('email')
        .then((value) => setState(() => email = value));
    SharedPreferencesHandler()
        .getString('timeZone')
        .then((value) => setState(() => timeZone = value));
    SharedPreferencesHandler()
        .getString('phone')
        .then((value) => setState(() => phone = value));
    super.initState();
  }

  Widget createProfileElement(IconData icon, String label) => Container(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.white,
                  Colors.indigo.shade50,
                  Colors.white,
                ]),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black12, width: 0.5)),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(5, 15, 15, 15),
                child: Icon(
                  icon,
                  color: Colors.blueGrey,
                  size: 35,
                )),
            const SizedBox(width: 5),
            Expanded(
                child: Text(
              label,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            )),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 133,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    color: Theme.of(context).colorScheme.tertiary,
                    //     gradient: RadialGradient(radius: 5, colors: [
                    //   Colors.blueGrey,
                    //   Colors.blueGrey.shade600,
                    //   Colors.white
                    // ])
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          color: Colors.transparent,
                          child: Icon(Icons.arrow_back,
                              size: 25,
                              color: Theme.of(context).colorScheme.primaryContainer),
                        ),
                      ),
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        child:
                            Image.asset('assets/images/decyfir_logo_white.png'),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 133),
                  width: MediaQuery.of(context).size.width,
                  height: 78,
                  //color: Color(0xFFED1F24),
                  //color: Colors.amber.shade50
                ),
                Container(
                  margin: const EdgeInsets.only(top: 65),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 140,
                    height: 140,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      backgroundImage:
                          const AssetImage('assets/images/avatar1.png'),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 235,
                  //color: Color(0xFFED1F24),
                  //decoration: BoxDecoration(color: Colors.amber.shade50),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    createProfileElement(Icons.person, '$firstName $lastName'),
                    createProfileElement(Icons.email_sharp, email),
                    createProfileElement(Icons.timelapse, timeZone),
                    createProfileElement(Icons.phone, phone),
                  ],
                ),
                // Container(
                //   margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       border: Border.all(color: Colors.black26, width: 1)),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(20),
                //     child: BackdropFilter(
                //       filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                //       child: Container(
                //         padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                //         width: MediaQuery.of(context).size.width,
                //         height: MediaQuery.of(context).size.height - 280,
                //         child: Column(
                //           children: [Text('hello')],
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
