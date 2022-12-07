import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  static const routeName = '/profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: BoxDecoration(
                    gradient: RadialGradient(radius: 5, colors: [
                  Colors.blueGrey,
                  Colors.blueGrey.shade600,
                  Colors.white
                ])),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: const Icon(Icons.arrow_back,
                          size: 25, color: Colors.white),
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
                margin: EdgeInsets.only(top: 70),
                alignment: Alignment.center,
                child: const SizedBox(
                  width: 140,
                  height: 140,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/images/appbar_logo.png'),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 240,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.bottomLeft,
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/cyfirma_logo_splash.png'))),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26, width: 1)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 280,
                      child: Column(
                        children: [Text('hello')],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
