import 'package:decyfir/src/common/schema.dart';
import 'package:flutter/material.dart';

class Constants {
  static Color black = Colors.black;
  static ColorScheme lightScheme = const ColorScheme.light(
      brightness: Brightness.light,
      primary: Color(0xFF37474F),
      primaryContainer: Colors.white,
      onPrimaryContainer: Colors.black,
      secondary: Color(0xFF37474F),
      onSecondaryContainer: Color(0xffFFEED6),
      background: Color(0xFFE6ECEC),
      tertiary: Colors.blueGrey);
  static ColorScheme darkScheme = ColorScheme.dark(
      primary: const Color(0xffFFEED6),
      primaryContainer: const Color(0xffFFEED6),
      onPrimaryContainer: Colors.grey.shade800,
      secondary: const Color(0xffFFEED6),
      onSecondaryContainer: const Color(0xFF37474F),
      background: const Color(0xFF37474F),
      tertiary: Colors.black87);

  static List<FaqElem> faqList = [
    FaqElem(
        question:
            "Why am I receiving notifications on my mobile device from the DeCYFIR app?",
        answer:
            "You receive push notifications from your DeCYFIR app on your mobile device to keep you informed about all critical alerts from the last 24 hours. On clicking the notification, you can see the complete list of the latest critical alerts."),
    FaqElem(
        question: "How to Reset Password?",
        answer:
            "Click the Hamburger menu at the top left corner of the home screen. From the main menu, click Reset Password. On the password reset screen, enter your existing password, and type a new password. Retype the password and click Confirm to save the password. If you are not willing to change the password, click Cancel to cancel the password reset process."),
    FaqElem(
        question: "What does the funnel-like icon do?",
        answer:
            "In the top right corner of your DeCYFIR dashboard, you have a funnel-like filter icon, which you can use to filter alerts based on a variety of categories. When you click the Filter icon, you will find a slide-up screen at the bottom that has Attack Surface, Digital Risk, and Vulnerability categories. After you click a category, the app segregates the relevant alerts into Critical, High, and Medium formats. You can choose from these formats to see all the relevant alerts on the dashboard."),
    FaqElem(
        question: "What is the Cross Icon in the Filter?",
        answer:
            "The X cross icon in the Filter slider screen will help you clear all your previously opted filters. So, now your dashboard will show all the alerts with no filtration."),
  ];

  static List categories = [
    {
      'category': 'Attack Surface',
      'apiAlias': 'AttackSurface',
      'icon': 'attack_surface.png',
      'elements': [
        {
          'abbr': 'CE',
          'subCategory': 'Certificates',
          'apiAlias': 'Certificates'
        },
        {
          'abbr': 'CO',
          'subCategory': 'Configuration',
          'apiAlias': 'Configuration'
        },
        {
          'abbr': 'CW',
          'subCategory': 'Cloud Weakness',
          'apiAlias': 'CloudWeakness'
        },
        {
          'abbr': 'IDR',
          'subCategory': 'IP / Domain Reputation',
          'apiAlias': 'IpReputation'
        },
        {
          'abbr': 'ÍDV',
          'subCategory': 'IP / Domain Vulnerability',
          'apiAlias': 'IpVulnerability'
        },
        {'abbr': 'OP', 'subCategory': 'Open Ports', 'apiAlias': 'OpenPorts'}
      ]
    },
    {
      'category': 'Digital Risk',
      'apiAlias': 'DigitalRisk',
      'icon': 'digital_risk.png',
      'elements': [
        {
          'abbr': 'DB',
          'subCategory': 'Data Breach And Web Monitoring',
          'apiAlias': 'DataBreachAndWebMonitoring'
        },
        {
          'abbr': 'II',
          'subCategory': 'Impersonation And Infringement',
          'apiAlias': 'ImpersonationAndInfringement'
        },
        {
          'abbr': 'SPE',
          'subCategory': 'Social And Public Exposure',
          'apiAlias': 'SocialAndPublicExposure'
        }
      ]
    },
    {
      'category': 'Vulnerability',
      'apiAlias': 'Vulnerability',
      'icon': 'vulnerabilities.png',
      'elements': [
        {
          'abbr': 'VL',
          'subCategory': 'Vulnerability',
          'apiAlias': 'Vulnerability'
        }
      ]
    }
  ];
}
