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

  static var counts = {
    "OOB": 1,
    "Alert Advisory": 0,
    "Cyfirma Research": 25,
    "Early Warnings": 15,
    "Malware Report": 11,
    "Latest Alerts": 12295,
    "Data Leak Advisory": 0
  };
  static List warnings = [
    {
      "id": "6352bd3f3d7293d4f2aec5dc",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning_Cyfirma_21oct2022new2",
      "reportFileName": null,
      "riskScore": 10,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-10-21T15:39:43.464+0000",
      "schedAt": "2022-10-21T12:59:00.000+0000",
      "publishAt": "2022-10-21T12:59:00.000+0000",
      "createdBy": "swarnalata.mohanty@cyfirma.com",
      "createdDate": "2022-10-21T15:39:43.464+0000",
      "updatedBy": "swarnalata.mohanty@cyfirma.com",
      "updatedDate": "2022-10-21T15:42:27.735+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description": "without Rating",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "634d32223d7293b3db87a17a",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning_CYFIRMA_17oct2022",
      "reportFileName": null,
      "riskScore": 7,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-10-17T10:44:50.532+0000",
      "schedAt": "2022-10-17T10:59:00.000+0000",
      "publishAt": "2022-10-17T10:59:00.000+0000",
      "createdBy": "swarnalata.mohanty@cyfirma.com",
      "createdDate": "2022-10-17T10:44:50.532+0000",
      "updatedBy": "swarnalata.mohanty@cyfirma.com",
      "updatedDate": "2022-10-17T10:45:59.047+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description": "short Des&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "634d33413d7293b3db87a208",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning_CYFIRMA_17oct2022new",
      "reportFileName": null,
      "riskScore": 6,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-10-17T10:49:37.163+0000",
      "schedAt": "2022-10-17T10:59:00.000+0000",
      "publishAt": "2022-10-17T10:59:00.000+0000",
      "createdBy": "swarnalata.mohanty@cyfirma.com",
      "createdDate": "2022-10-17T10:49:37.163+0000",
      "updatedBy": "swarnalata.mohanty@cyfirma.com",
      "updatedDate": "2022-10-17T10:50:12.756+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description": "short Des&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "634d339c3d7293b3db87a233",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning_CYFIRMA_17oct20229",
      "reportFileName": null,
      "riskScore": 10,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-10-17T10:51:08.169+0000",
      "schedAt": "2022-10-16T10:59:00.000+0000",
      "publishAt": "2022-10-16T10:59:00.000+0000",
      "createdBy": "swarnalata.mohanty@cyfirma.com",
      "createdDate": "2022-10-17T10:51:08.169+0000",
      "updatedBy": "swarnalata.mohanty@cyfirma.com",
      "updatedDate": "2022-10-17T10:51:45.511+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description": "short Des&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "633ffa143d72930e8b292c0a",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning_CYFIRMA_07oct2022",
      "reportFileName": null,
      "riskScore": 7,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-10-07T10:06:12.006+0000",
      "schedAt": "2022-10-02T22:59:00.000+0000",
      "publishAt": "2022-10-02T22:59:00.000+0000",
      "createdBy": "swarnalata.mohanty@cyfirma.com",
      "createdDate": "2022-10-07T10:06:12.006+0000",
      "updatedBy": "swarnalata.mohanty@cyfirma.com",
      "updatedDate": "2022-10-07T10:11:13.498+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": null,
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "634d30083d7293b3db87a0be",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning_CYFIRMA_17oct2022",
      "reportFileName": null,
      "riskScore": 10,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2022-10-07T10:06:12.006+0000",
          "updatedBy": null,
          "updatedDate": "2022-10-07T10:06:12.006+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-10-17T10:35:52.213+0000",
      "schedAt": "2022-09-23T00:59:00.000+0000",
      "publishAt": "2022-09-23T00:59:00.000+0000",
      "createdBy": "swarnalata.mohanty@cyfirma.com",
      "createdDate": "2022-10-17T10:35:52.213+0000",
      "updatedBy": "swarnalata.mohanty@cyfirma.com",
      "updatedDate": "2022-10-17T10:40:18.503+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description": "short Des&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "631ecd753d7293d852df791e",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning - REDWALL_Cyfirma_12 Sep 2022",
      "reportFileName": null,
      "riskScore": 3,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": "626820ad3d7293abee20587b",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-09-12T06:11:01.493+0000",
      "schedAt": "2022-09-12T16:00:00.000+0000",
      "publishAt": "2022-09-12T16:00:00.000+0000",
      "createdBy": "tushar.raj@cyfirma.com",
      "createdDate": "2022-09-12T06:11:01.493+0000",
      "updatedBy": "raj.patel@cyfirma.com",
      "updatedDate": "2022-09-12T17:23:56.809+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description":
            "<strong>CYFIRMA</strong> recommends using reported IOC details for measures against this campaign and threat hunting within your environment.<br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat, and your organization is advised to take precautionary measures as highlighted in this report. If you have a question or concern relating to the content in this bulletin, please reach out to CYFIRMA Threat Intelligence (CTI) by using the Inquiries button in DeCYFIR&rsquo;s main menu bar located on the left corner of the webpage.&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "631a2f663d729323cebfb34a",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning - REDWALL_Cyfirma_24 August 2022",
      "reportFileName": null,
      "riskScore": 6,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": "626820ad3d7293abee20587b",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-09-08T18:07:34.584+0000",
      "schedAt": "2022-08-25T11:00:00.000+0000",
      "publishAt": "2022-08-25T11:00:00.000+0000",
      "createdBy": "raj.patel@cyfirma.com",
      "createdDate": "2022-09-08T18:07:34.584+0000",
      "updatedBy": "raj.patel@cyfirma.com",
      "updatedDate": "2022-09-08T18:22:08.804+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description":
            "<strong>CYFIRMA</strong> recommends using reported IOC details for measures against this campaign and threat hunting within your environment.<br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat, and your organization is advised to take precautionary measures as highlighted in this report. If you have a question or concern relating to the content in this bulletin, please reach out to CYFIRMA Threat Intelligence (CTI) by using the Inquiries button in DeCYFIR&rsquo;s main menu bar located on the left corner of the webpage.&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "6305c8fd3d7293bc89ff7240",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning - REDWALL_Cyfirma_24 August 2022",
      "reportFileName": null,
      "riskScore": 9,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": "626820ad3d7293abee20587b",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-08-24T06:45:17.951+0000",
      "schedAt": "2022-08-23T06:00:00.000+0000",
      "publishAt": "2022-08-23T06:00:00.000+0000",
      "createdBy": "shreyashee.choudhury@cyfirma.com",
      "createdDate": "2022-08-24T06:45:17.951+0000",
      "updatedBy": "tushar.raj@cyfirma.com",
      "updatedDate": "2022-08-24T07:05:35.538+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description":
            "<strong>CYFIRMA</strong> recommends using reported IOC details for measures against this campaign and threat hunting within your environment.<br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat, and your organization is advised to take precautionary measures as highlighted in this report. If you have a question or concern relating to the content in this bulletin, please reach out to CYFIRMA Threat Intelligence (CTI) by using the Inquiries button in DeCYFIR&rsquo;s main menu bar located on the left corner of the webpage.&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "628e1e813d72932690042dfa",
      "reportTypeId": "61bad23e8c3c279b1aa325a1",
      "reportTypeName": "Early Warning Advisory",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early Warning - REDWALL_Transcosmos_26 April 2022",
      "reportFileName": null,
      "riskScore": 10,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 2,
      "parentReportId": "626820ad3d7293abee20587b",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a2",
          "orgId": [],
          "orderNo": 30,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a3",
          "orgId": [],
          "orderNo": 31,
          "name": "BACKGROUND",
          "description": "BACKGROUND",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a4",
          "orgId": [],
          "orderNo": 32,
          "name": "TARGETED ASSETS",
          "description": "TARGETED ASSETS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a5",
          "orgId": [],
          "orderNo": 33,
          "name": "ADVERSARY ASSOCIATION",
          "description": "ADVERSARY ASSOCIATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a6",
          "orgId": [],
          "orderNo": 34,
          "name": "THREAT CORRELATION",
          "description": "THREAT CORRELATION",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a7",
          "orgId": [],
          "orderNo": 35,
          "name": "TECHNICAL ASSESMENT",
          "description": "TECHNICAL ASSESMENT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a8",
          "orgId": [],
          "orderNo": 36,
          "name": "SUSPECTED MALWARE",
          "description": "SUSPECTED MALWARE",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.256+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.256+0000",
          "id": "61bad2538c3c279b1aa325a9",
          "orgId": [],
          "orderNo": 37,
          "name": "INSIGHT",
          "description": "INSIGHT",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325aa",
          "orgId": [],
          "orderNo": 38,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61bad2538c3c279b1aa325ab",
          "orgId": [],
          "orderNo": 39,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        },
        {
          "createdBy": null,
          "createdDate": "2021-12-22T19:06:22.257+0000",
          "updatedBy": null,
          "updatedDate": "2021-12-22T19:06:22.257+0000",
          "id": "61cc2546b3196bfc891b2e75",
          "orgId": [],
          "orderNo": 45,
          "name": "RULES",
          "description": "RULES",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warning Advisory"
        }
      ],
      "status": "Published",
      "createdAt": "2022-05-25T12:18:09.209+0000",
      "schedAt": "2022-05-25T11:59:00.000+0000",
      "publishAt": "2022-05-25T11:59:00.000+0000",
      "createdBy": "aptus-dev@aptus.in",
      "createdDate": "2022-05-25T12:18:09.209+0000",
      "updatedBy": "aptus-dev@aptus.in",
      "updatedDate": "2022-05-25T12:20:50.382+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": null,
        "reportId": null,
        "sectionId": null,
        "orgId": null,
        "description":
            "<strong>CYFIRMA</strong> recommends using reported IOC details for measures against this campaign and threat hunting within your environment.<br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat, and your organization is advised to take precautionary measures as highlighted in this report. If you have a question or concern relating to the content in this bulletin, please reach out to CYFIRMA Threat Intelligence (CTI) by using the Inquiries button in DeCYFIR&rsquo;s main menu bar located on the left corner of the webpage.&nbsp;",
        "createdBy": null,
        "createdDate": null,
        "updatedBy": null,
        "updatedDate": null
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": true,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "610d3b703d7293222b165077",
      "reportTypeId": "5eca8ae4e3169c4fa1d95c58",
      "reportTypeName": "Early Warnings",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "Early warning12_CYFIRMAThreatMonitoring__13 July 2021",
      "reportFileName": null,
      "riskScore": 6,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-07-12T13:19:09.093+0000",
          "updatedBy": null,
          "updatedDate": "2021-07-12T13:19:09.093+0000",
          "id": "5eca8b1ae3169c4fa1d95c71",
          "orgId": [],
          "orderNo": 10,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-07-12T13:19:09.093+0000",
          "updatedBy": null,
          "updatedDate": "2021-07-12T13:19:09.093+0000",
          "id": "5eca8b1ae3169c4fa1d95c72",
          "orgId": [],
          "orderNo": 11,
          "name": "EARLY WARNING",
          "description": "EARLY WARNING",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-07-12T13:19:09.093+0000",
          "updatedBy": null,
          "updatedDate": "2021-07-12T13:19:09.093+0000",
          "id": "5eca8b1ae3169c4fa1d95c75",
          "orgId": [],
          "orderNo": 14,
          "name": "EW-ADHOC",
          "description": "EW-ADHOC",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-07-12T13:19:09.093+0000",
          "updatedBy": null,
          "updatedDate": "2021-07-12T13:19:09.093+0000",
          "id": "603f267a47b4004ada3c35ab",
          "orgId": [],
          "orderNo": 18,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-07-12T13:19:09.093+0000",
          "updatedBy": null,
          "updatedDate": "2021-07-12T13:19:09.093+0000",
          "id": "603f267e47b4004ada3c35ac",
          "orgId": [],
          "orderNo": 19,
          "name": "APPENDIX",
          "description": "APPENDIX",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        }
      ],
      "status": "Published",
      "createdAt": "2021-08-06T13:38:56.488+0000",
      "schedAt": "2021-08-05T12:00:00.000+0000",
      "publishAt": "2021-08-05T12:00:00.000+0000",
      "createdBy": "raj.patel@cyfirma.com",
      "createdDate": "2021-08-06T13:38:56.488+0000",
      "updatedBy": "raj.patel@cyfirma.com",
      "updatedDate": "2021-08-06T13:41:46.372+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": "610d3b703d7293222b165078",
        "reportId": "610d3b703d7293222b165077",
        "sectionId": "5eca8b1ae3169c4fa1d95c71",
        "orgId": null,
        "description": "test",
        "createdBy": null,
        "createdDate": "2021-08-06T13:38:56.495+0000",
        "updatedBy": null,
        "updatedDate": "2021-08-06T13:38:56.495+0000"
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": false,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "608bf8e2b7e0293e467f23d9",
      "reportTypeId": "5eca8ae4e3169c4fa1d95c58",
      "reportTypeName": "Early Warnings",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "EW Hacking Campaign_CYFIRMA_08 April 2021",
      "reportFileName": null,
      "riskScore": 5,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": "6054b82ab7e0292ea0a2515c",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.852+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.852+0000",
          "id": "5eca8b1ae3169c4fa1d95c71",
          "orgId": [],
          "orderNo": 10,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c72",
          "orgId": [],
          "orderNo": 11,
          "name": "EARLY WARNING",
          "description": "EARLY WARNING",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c73",
          "orgId": [],
          "orderNo": 12,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c75",
          "orgId": [],
          "orderNo": 14,
          "name": "EW-ADHOC",
          "description": "EW-ADHOC",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        }
      ],
      "status": "Published",
      "createdAt": "2021-04-30T12:32:34.993+0000",
      "schedAt": "2021-04-30T18:00:00.000+0000",
      "publishAt": "2021-04-30T18:00:00.000+0000",
      "createdBy": "priyanka.h@cyfirma.com",
      "createdDate": "2021-04-30T12:32:34.993+0000",
      "updatedBy": "priyanka.h@cyfirma.com",
      "updatedDate": "2021-04-30T12:36:22.853+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": "608bf8e2b7e0293e467f23da",
        "reportId": "608bf8e2b7e0293e467f23d9",
        "sectionId": "5eca8b1ae3169c4fa1d95c71",
        "orgId": null,
        "description":
            "<strong>[10 December 2020, Version 3&nbsp;<span style=\"color:#c0392b;\">MOD</span>]</strong><br />\n<br />\nThis is an updated report from the previous early warning report sent on 07 June 2020 and 29 Jun 2020.<br />\n<br />\nOn 10 December 2020, CYFIRMA Threat Intelligence observed threat against <strong>NHK planet,</strong>&nbsp;suspected to be carried out by <strong>State-sponsored</strong> <strong>North Korean Threat Actor &ndash; Lazarus Group</strong> or affiliates as part of the&nbsp;<strong>Global Hacking Campaign</strong>&nbsp;-&nbsp;<strong>z02K.<br />\n<br />\nTarget IP Address</strong><br />\n&nbsp;\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\"><strong>IP Address</strong></td>\n\t\t\t<td style=\"text-align: center;\"><strong>Reported Date</strong></td>\n\t\t\t<td style=\"text-align: center;\"><strong>Risk Rating</strong></td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\">165.100.235.234</td>\n\t\t\t<td style=\"text-align: center;\">10-12-2020</td>\n\t\t\t<td style=\"text-align: center;\">Low</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\">165.100.235.233</td>\n\t\t\t<td style=\"text-align: center;\">10-12-2020</td>\n\t\t\t<td style=\"text-align: center;\">Low</td>\n\t\t</tr>\n\t</tbody>\n</table>\n<br />\nCYFIRMA recommends to use reported IOC details for proactive measures against this campaign and for threat hunting within your environment.<br />\n<br />\nThe <strong>primary motive</strong> of this campaign appears to be:&nbsp;\n\n<ul>\n\t<li><strong>Exfiltration of Sensitive Information/Content</strong></li>\n</ul>\n<br />\n<br />\n<strong>[29 Jun 2020, Version 2&nbsp;]</strong><br />\n<br />\nOn 29 Jun 2020, CYFIRMA Threat Intelligence Team carried out <strong>additional analysis</strong> on the <strong>campaign infrastructure</strong> and <strong>targeted server</strong>. The campaign is suspected to be carried out by the <strong>State-Sponsored North Korean Threat Actor &ndash; Lazarus Group</strong> <strong>(Confidence Level: High)</strong>.<br />\n<br />\n<strong>[07 Jun 2020, Version 1]</strong><br />\n<br />\nOn 07 Jun 2020, CYFIRMA Threat Intelligence identified multiple threats against NHK suspected to be carried out by <strong>State-Sponsored North Korean Threat Actor &ndash; Lazarus Group</strong> as part of the <strong>Global Hacking Campaign</strong>.<br />\n<br />\nThe primary motive of this campaign appears to be:&nbsp;<br />\n&nbsp;\n<ul>\n\t<li><strong>Exfiltration of Sensitive Information, Personally Identifiable and Customer Identifiable Information (PII and CII) for Financial Gains</strong></li>\n</ul>\n<br />\n<strong>CYFIRMA Risk</strong> Rating for this<strong> EARLY WARNING</strong> is: <strong>CRITICAL</strong><br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat and your organization is advised to take precautionary measures as highlighted in this report.",
        "createdBy": null,
        "createdDate": "2021-01-11T09:42:13.449+0000",
        "updatedBy": null,
        "updatedDate": "2021-01-11T09:42:13.449+0000"
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": false,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "607d6ed5b7e02970754637b3",
      "reportTypeId": "5eca8ae4e3169c4fa1d95c58",
      "reportTypeName": "Early Warnings",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "EW Hacking Campaign_Cyfirma_19 April 2021",
      "reportFileName": null,
      "riskScore": 9,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": "606dca0fb7e02975903862ed",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.852+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.852+0000",
          "id": "5eca8b1ae3169c4fa1d95c71",
          "orgId": [],
          "orderNo": 10,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c72",
          "orgId": [],
          "orderNo": 11,
          "name": "EARLY WARNING",
          "description": "EARLY WARNING",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c73",
          "orgId": [],
          "orderNo": 12,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c75",
          "orgId": [],
          "orderNo": 14,
          "name": "EW-ADHOC",
          "description": "EW-ADHOC",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        }
      ],
      "status": "Published",
      "createdAt": "2021-04-19T11:51:49.730+0000",
      "schedAt": "2021-04-19T17:23:00.000+0000",
      "publishAt": "2021-04-19T17:23:00.000+0000",
      "createdBy": "aptus-dev@aptus.in",
      "createdDate": "2021-04-19T11:51:49.730+0000",
      "updatedBy": "aptus-dev@aptus.in",
      "updatedDate": "2021-04-19T11:52:25.517+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": "607d6ed5b7e02970754637b4",
        "reportId": "607d6ed5b7e02970754637b3",
        "sectionId": "5eca8b1ae3169c4fa1d95c71",
        "orgId": null,
        "description":
            "<strong>[10 December 2020, Version 3&nbsp;<span style=\"color:#c0392b;\">MOD</span>]</strong><br />\n<br />\nThis is an updated report from the previous early warning report sent on 07 June 2020 and 29 Jun 2020.<br />\n<br />\nOn 10 December 2020, CYFIRMA Threat Intelligence observed threat against <strong>NHK planet,</strong>&nbsp;suspected to be carried out by <strong>State-sponsored</strong> <strong>North Korean Threat Actor &ndash; Lazarus Group</strong> or affiliates as part of the&nbsp;<strong>Global Hacking Campaign</strong>&nbsp;-&nbsp;<strong>z02K.<br />\n<br />\nTarget IP Address</strong><br />\n&nbsp;\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\"><strong>IP Address</strong></td>\n\t\t\t<td style=\"text-align: center;\"><strong>Reported Date</strong></td>\n\t\t\t<td style=\"text-align: center;\"><strong>Risk Rating</strong></td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\">165.100.235.234</td>\n\t\t\t<td style=\"text-align: center;\">10-12-2020</td>\n\t\t\t<td style=\"text-align: center;\">Low</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\">165.100.235.233</td>\n\t\t\t<td style=\"text-align: center;\">10-12-2020</td>\n\t\t\t<td style=\"text-align: center;\">Low</td>\n\t\t</tr>\n\t</tbody>\n</table>\n<br />\nCYFIRMA recommends to use reported IOC details for proactive measures against this campaign and for threat hunting within your environment.<br />\n<br />\nThe <strong>primary motive</strong> of this campaign appears to be:&nbsp;\n\n<ul>\n\t<li><strong>Exfiltration of Sensitive Information/Content</strong></li>\n</ul>\n<br />\n<br />\n<strong>[29 Jun 2020, Version 2&nbsp;]</strong><br />\n<br />\nOn 29 Jun 2020, CYFIRMA Threat Intelligence Team carried out <strong>additional analysis</strong> on the <strong>campaign infrastructure</strong> and <strong>targeted server</strong>. The campaign is suspected to be carried out by the <strong>State-Sponsored North Korean Threat Actor &ndash; Lazarus Group</strong> <strong>(Confidence Level: High)</strong>.<br />\n<br />\n<strong>[07 Jun 2020, Version 1]</strong><br />\n<br />\nOn 07 Jun 2020, CYFIRMA Threat Intelligence identified multiple threats against NHK suspected to be carried out by <strong>State-Sponsored North Korean Threat Actor &ndash; Lazarus Group</strong> as part of the <strong>Global Hacking Campaign</strong>.<br />\n<br />\nThe primary motive of this campaign appears to be:&nbsp;<br />\n&nbsp;\n<ul>\n\t<li><strong>Exfiltration of Sensitive Information, Personally Identifiable and Customer Identifiable Information (PII and CII) for Financial Gains</strong></li>\n</ul>\n<br />\n<strong>CYFIRMA Risk</strong> Rating for this<strong> EARLY WARNING</strong> is: <strong>CRITICAL</strong><br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat and your organization is advised to take precautionary measures as highlighted in this report.",
        "createdBy": null,
        "createdDate": "2021-01-11T09:42:13.449+0000",
        "updatedBy": null,
        "updatedDate": "2021-01-11T09:42:13.449+0000"
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": false,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "606ead9bb7e0290fa58d3f9f",
      "reportTypeId": "5eca8ae4e3169c4fa1d95c58",
      "reportTypeName": "Early Warnings",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "EW Hacking Campaign_CYFIRMA_08 April 2021",
      "reportFileName": null,
      "riskScore": 6,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": "6054b82ab7e0292ea0a2515c",
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.852+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.852+0000",
          "id": "5eca8b1ae3169c4fa1d95c71",
          "orgId": [],
          "orderNo": 10,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c72",
          "orgId": [],
          "orderNo": 11,
          "name": "EARLY WARNING",
          "description": "EARLY WARNING",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c73",
          "orgId": [],
          "orderNo": 12,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2021-01-11T08:22:37.853+0000",
          "updatedBy": null,
          "updatedDate": "2021-01-11T08:22:37.853+0000",
          "id": "5eca8b1ae3169c4fa1d95c75",
          "orgId": [],
          "orderNo": 14,
          "name": "EW-ADHOC",
          "description": "EW-ADHOC",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        }
      ],
      "status": "Published",
      "createdAt": "2021-04-08T07:15:39.915+0000",
      "schedAt": "2021-04-08T16:21:00.000+0000",
      "publishAt": "2021-04-08T16:21:00.000+0000",
      "createdBy": "girish.chatni@cyfirma.com",
      "createdDate": "2021-04-08T07:15:39.915+0000",
      "updatedBy": "aptus-dev@aptus.in",
      "updatedDate": "2021-04-08T07:20:47.311+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": "606ead9bb7e0290fa58d3fa0",
        "reportId": "606ead9bb7e0290fa58d3f9f",
        "sectionId": "5eca8b1ae3169c4fa1d95c71",
        "orgId": null,
        "description":
            "<strong>[10 December 2020, Version 3&nbsp;<span style=\"color:#c0392b;\">MOD</span>]</strong><br />\n<br />\nThis is an updated report from the previous early warning report sent on 07 June 2020 and 29 Jun 2020.<br />\n<br />\nOn 10 December 2020, CYFIRMA Threat Intelligence observed threat against <strong>NHK planet,</strong>&nbsp;suspected to be carried out by <strong>State-sponsored</strong> <strong>North Korean Threat Actor &ndash; Lazarus Group</strong> or affiliates as part of the&nbsp;<strong>Global Hacking Campaign</strong>&nbsp;-&nbsp;<strong>z02K.<br />\n<br />\nTarget IP Address</strong><br />\n&nbsp;\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\"><strong>IP Address</strong></td>\n\t\t\t<td style=\"text-align: center;\"><strong>Reported Date</strong></td>\n\t\t\t<td style=\"text-align: center;\"><strong>Risk Rating</strong></td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\">165.100.235.234</td>\n\t\t\t<td style=\"text-align: center;\">10-12-2020</td>\n\t\t\t<td style=\"text-align: center;\">Low</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td style=\"text-align: center;\">165.100.235.233</td>\n\t\t\t<td style=\"text-align: center;\">10-12-2020</td>\n\t\t\t<td style=\"text-align: center;\">Low</td>\n\t\t</tr>\n\t</tbody>\n</table>\n<br />\nCYFIRMA recommends to use reported IOC details for proactive measures against this campaign and for threat hunting within your environment.<br />\n<br />\nThe <strong>primary motive</strong> of this campaign appears to be:&nbsp;\n\n<ul>\n\t<li><strong>Exfiltration of Sensitive Information/Content</strong></li>\n</ul>\n<br />\n<br />\n<strong>[29 Jun 2020, Version 2&nbsp;]</strong><br />\n<br />\nOn 29 Jun 2020, CYFIRMA Threat Intelligence Team carried out <strong>additional analysis</strong> on the <strong>campaign infrastructure</strong> and <strong>targeted server</strong>. The campaign is suspected to be carried out by the <strong>State-Sponsored North Korean Threat Actor &ndash; Lazarus Group</strong> <strong>(Confidence Level: High)</strong>.<br />\n<br />\n<strong>[07 Jun 2020, Version 1]</strong><br />\n<br />\nOn 07 Jun 2020, CYFIRMA Threat Intelligence identified multiple threats against NHK suspected to be carried out by <strong>State-Sponsored North Korean Threat Actor &ndash; Lazarus Group</strong> as part of the <strong>Global Hacking Campaign</strong>.<br />\n<br />\nThe primary motive of this campaign appears to be:&nbsp;<br />\n&nbsp;\n<ul>\n\t<li><strong>Exfiltration of Sensitive Information, Personally Identifiable and Customer Identifiable Information (PII and CII) for Financial Gains</strong></li>\n</ul>\n<br />\n<strong>CYFIRMA Risk</strong> Rating for this<strong> EARLY WARNING</strong> is: <strong>CRITICAL</strong><br />\n<br />\nAnalysis of captured hackers&rsquo; footprints and correlation with external threat vectors indicate that this is a potential threat and your organization is advised to take precautionary measures as highlighted in this report.",
        "createdBy": null,
        "createdDate": "2021-01-11T09:42:13.449+0000",
        "updatedBy": null,
        "updatedDate": "2021-01-11T09:42:13.449+0000"
      },
      "isAutomated": false,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": false,
      "emailSent": null,
      "isNew": false,
      "observation": null
    },
    {
      "id": "603e582db7e0296dadd8ee4a",
      "reportTypeId": "5eca8ae4e3169c4fa1d95c58",
      "reportTypeName": "Early Warnings",
      "subTypeId": "5eca8af0e3169c4fa1d95c5b",
      "subTypeName": null,
      "reportName": "EW_Cyfirma_2 March 2021",
      "reportFileName": null,
      "riskScore": 9,
      "trends": null,
      "externalThreatScore": null,
      "externalThreatScoreTrends": null,
      "externalLandscapeScore": null,
      "externalLandscapeScoreTrends": null,
      "version": 1,
      "parentReportId": null,
      "active": true,
      "ewEnable": null,
      "orgId": [1],
      "orgNames": ["CYFIRMA"],
      "trendsStory": null,
      "org": [],
      "onlineReportSections": [
        {
          "createdBy": null,
          "createdDate": "2020-05-31T11:13:23.268+0000",
          "updatedBy": null,
          "updatedDate": "2020-05-31T11:13:23.268+0000",
          "id": "5eca8b1ae3169c4fa1d95c71",
          "orgId": [],
          "orderNo": 10,
          "name": "EXECUTIVE SUMMARY",
          "description": "EXECUTIVE SUMMARY",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2020-05-31T11:13:23.268+0000",
          "updatedBy": null,
          "updatedDate": "2020-05-31T11:13:23.268+0000",
          "id": "5eca8b1ae3169c4fa1d95c72",
          "orgId": [],
          "orderNo": 11,
          "name": "EARLY WARNING",
          "description": "EARLY WARNING",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2020-05-31T11:13:23.268+0000",
          "updatedBy": null,
          "updatedDate": "2020-05-31T11:13:23.268+0000",
          "id": "5eca8b1ae3169c4fa1d95c73",
          "orgId": [],
          "orderNo": 12,
          "name": "RECOMMENDED ACTIONS",
          "description": "RECOMMENDED ACTIONS",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        },
        {
          "createdBy": null,
          "createdDate": "2020-05-31T11:13:23.268+0000",
          "updatedBy": null,
          "updatedDate": "2020-05-31T11:13:23.268+0000",
          "id": "5eca8b1ae3169c4fa1d95c75",
          "orgId": [],
          "orderNo": 14,
          "name": "EW-ADHOC",
          "description": "EW-ADHOC",
          "riskScore": null,
          "trends": null,
          "reportType": "Early Warnings"
        }
      ],
      "status": "Published",
      "createdAt": "2021-03-02T15:22:21.399+0000",
      "schedAt": "2021-03-02T20:57:00.000+0000",
      "publishAt": "2021-03-02T20:57:00.000+0000",
      "createdBy": "aptus-dev@aptus.in",
      "createdDate": "2021-03-02T15:22:21.399+0000",
      "updatedBy": "aptus-dev@aptus.in",
      "updatedDate": "2021-03-02T15:25:28.330+0000",
      "iocFileName": null,
      "iocUploaded": null,
      "iocFid": null,
      "incidentId": null,
      "attachments": [],
      "alerts": [],
      "onlineReportStory": {
        "id": "603e582db7e0296dadd8ee4b",
        "reportId": "603e582db7e0296dadd8ee4a",
        "sectionId": "5eca8b1ae3169c4fa1d95c71",
        "orgId": null,
        "description":
            "CYFIRMA Threat Intelligence Team carried out additional analysis on the campaign infrastructure and targeted server. The campaign is suspected to be carried out by the&nbsp;Chinese Threat Actors &ndash; MISSION/APT41&nbsp;with&nbsp;Confidence Level: High&nbsp;and&nbsp;TROPIC TROOPER&nbsp;with&nbsp;Confidence Level: Low<br />\n<br />\nOn 27 April 2020, CYFIRMA Threat Intelligence noticed multiple claims against Suntory Holdings as a part of&nbsp;Chinese Campaign &ndash; VISION2025&nbsp;suspected to be operated by&nbsp;Mission2025/APT41.<br />\n<br />\nTarget:<br />\nSuntory Garuda<br />\nSuntory PEPSICO<br />\nMotive:<br />\nExfiltrating Sensitive Data<br />\nEspionage<br />\nReputational Damage<br />\nChinese state-sponsored hacker group&nbsp;MISSION2025/APT41&nbsp;were observed targeting Suntory Holdings assets leveraging the vulnerability of OS and web server.<br />\n<br />\nCYFIRMA Risk Rating for this&nbsp;EARLY&nbsp;WARNING&nbsp;is:&nbsp;HIGH<br />\n&nbsp;",
        "createdBy": null,
        "createdDate": "2021-03-02T05:45:26.117+0000",
        "updatedBy": null,
        "updatedDate": "2021-03-02T05:45:26.117+0000"
      },
      "isAutomated": null,
      "emailScheduledTime": null,
      "emailRecipients": null,
      "cc": null,
      "bcc": null,
      "pdfFileName": null,
      "isEarlyWarningAdvisory": false,
      "emailSent": null,
      "isNew": false,
      "observation": null
    }
  ];
  static List alerts = [
    {
      "id": "635afaa53d7293714b1e6e32",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cf3d7293714b1e66e2",
      "date": null,
      "createdDate": "2022-10-27T21:39:49.981",
      "orgId": 1,
      "title": "You have non-standard ports 80 opened",
      "description": null,
      "riskScore": 9,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:07.303Z",
        "lastModifiedDate": "2022-10-27T21:02:07.303Z",
        "id": "635af1cf3d7293714b1e66e2",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "52.98.123.184",
        "ips": [
          "52.98.123.248",
          "40.99.31.136",
          "52.98.123.184",
          "52.98.59.24"
        ],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[b6eccd7c-6755-23d4-4b9e-66a7d7f4fd60], X-FEServer=[PN3PR01CA0099, PN3PR01CA0099], X-RequestId=[6d4089be-e374-47dc-8431-a93c102c45aa], X-FEProxyInfo=[PN3PR01CA0099.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[fM3stlVn1CNLnman1/T9YA.0], X-Powered-By=[ASP.NET], Date=[Thu, 27 Oct 2022 20:45:15 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "62a042233d7293bf792c8e42",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "configLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635afaa53d7293714b1e6e31",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cb3d7293714b1e66e1",
      "date": null,
      "createdDate": "2022-10-27T21:39:49.906",
      "orgId": 1,
      "title": "You have non-standard ports 80, 8080, 443, 8081 opened",
      "description": null,
      "riskScore": 9,
      "source": "fwtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:03.241Z",
        "lastModifiedDate": "2022-10-27T21:02:03.241Z",
        "id": "635af1cb3d7293714b1e66e1",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fwtrack.cyfirma.com",
        "ip": "13.126.106.193",
        "ips": ["13.126.106.193", "13.234.93.220"],
        "source": "fwtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1cb3d7293714b1e66e0",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 8080, 443, 8081],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "configLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "threatActors": [],
        "subDomainUID": "62986cfe3d729352d755fd43",
        "subDomainCreatedDate": "2022-06-02T07:55:42.670Z",
        "isNew": false
      }
    },
    {
      "id": "635afaa53d7293714b1e6e30",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1ca3d7293714b1e66df",
      "date": null,
      "createdDate": "2022-10-27T21:39:49.824",
      "orgId": 1,
      "title": "You have non-standard ports 80, 443 opened",
      "description": null,
      "riskScore": 9,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:02.922Z",
        "lastModifiedDate": "2022-10-27T21:02:02.922Z",
        "id": "635af1ca3d7293714b1e66df",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "52.70.226.45",
        "ips": ["52.70.226.45", "52.20.184.207"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1ca3d7293714b1e66de",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "configLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635afa9a3d7293714b1e6e2a",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cf3d7293714b1e66e2",
      "date": null,
      "createdDate": "2022-10-27T21:39:38.288",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: autodiscover.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:07.303Z",
        "lastModifiedDate": "2022-10-27T21:02:07.303Z",
        "id": "635af1cf3d7293714b1e66e2",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "52.98.123.184",
        "ips": [
          "52.98.123.248",
          "40.99.31.136",
          "52.98.123.184",
          "52.98.59.24"
        ],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[b6eccd7c-6755-23d4-4b9e-66a7d7f4fd60], X-FEServer=[PN3PR01CA0099, PN3PR01CA0099], X-RequestId=[6d4089be-e374-47dc-8431-a93c102c45aa], X-FEProxyInfo=[PN3PR01CA0099.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[fM3stlVn1CNLnman1/T9YA.0], X-Powered-By=[ASP.NET], Date=[Thu, 27 Oct 2022 20:45:15 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "62a042233d7293bf792c8e42",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "configLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635afa9a3d7293714b1e6e29",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cb3d7293714b1e66e1",
      "date": null,
      "createdDate": "2022-10-27T21:39:38.226",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: fwtrack.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "fwtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:03.241Z",
        "lastModifiedDate": "2022-10-27T21:02:03.241Z",
        "id": "635af1cb3d7293714b1e66e1",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fwtrack.cyfirma.com",
        "ip": "13.126.106.193",
        "ips": ["13.126.106.193", "13.234.93.220"],
        "source": "fwtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1cb3d7293714b1e66e0",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 8080, 443, 8081],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "configLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "threatActors": [],
        "subDomainUID": "62986cfe3d729352d755fd43",
        "subDomainCreatedDate": "2022-06-02T07:55:42.670Z",
        "isNew": false
      }
    },
    {
      "id": "635afa9a3d7293714b1e6e28",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1ca3d7293714b1e66df",
      "date": null,
      "createdDate": "2022-10-27T21:39:38.158",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: fmtrack.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:02.922Z",
        "lastModifiedDate": "2022-10-27T21:02:02.922Z",
        "id": "635af1ca3d7293714b1e66df",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "52.70.226.45",
        "ips": ["52.70.226.45", "52.20.184.207"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1ca3d7293714b1e66de",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "configLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635a2a293d72938492c23066",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635a272f3d72938492c224bc",
      "date": null,
      "createdDate": "2022-10-27T06:50:17.364",
      "orgId": 1,
      "title": "You have non-standard ports 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "fwtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T06:37:35.111Z",
        "lastModifiedDate": "2022-10-27T06:37:35.111Z",
        "id": "635a272f3d72938492c224bc",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fwtrack.cyfirma.com",
        "ip": "13.234.93.220",
        "ips": ["13.126.106.193", "13.234.93.220"],
        "source": "fwtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635a272f3d72938492c224bb",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T06:37:35.110Z",
        "openPortLastModifiedDate": "2022-10-27T06:37:35.110Z",
        "configLastModifiedDate": "2022-10-27T06:37:35.110Z",
        "threatActors": [],
        "subDomainUID": "62986cfe3d729352d755fd43",
        "subDomainCreatedDate": "2022-06-02T07:55:42.670Z",
        "isNew": false
      }
    },
    {
      "id": "635a2a293d72938492c23065",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635a272c3d72938492c224b9",
      "date": null,
      "createdDate": "2022-10-27T06:50:17.026",
      "orgId": 1,
      "title": "You have non-standard ports 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T06:37:32.803Z",
        "lastModifiedDate": "2022-10-27T06:37:32.803Z",
        "id": "635a272c3d72938492c224b9",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "52.20.184.207",
        "ips": ["52.70.226.45", "52.20.184.207"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635a272c3d72938492c224b8",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T06:37:32.802Z",
        "openPortLastModifiedDate": "2022-10-27T06:37:32.802Z",
        "configLastModifiedDate": "2022-10-27T06:37:32.802Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635a29dd3d72938492c22abb",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635a272f3d72938492c224bc",
      "date": null,
      "createdDate": "2022-10-27T06:49:01.692",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: fwtrack.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "fwtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T06:37:35.111Z",
        "lastModifiedDate": "2022-10-27T06:37:35.111Z",
        "id": "635a272f3d72938492c224bc",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fwtrack.cyfirma.com",
        "ip": "13.234.93.220",
        "ips": ["13.126.106.193", "13.234.93.220"],
        "source": "fwtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635a272f3d72938492c224bb",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T06:37:35.110Z",
        "openPortLastModifiedDate": "2022-10-27T06:37:35.110Z",
        "configLastModifiedDate": "2022-10-27T06:37:35.110Z",
        "threatActors": [],
        "subDomainUID": "62986cfe3d729352d755fd43",
        "subDomainCreatedDate": "2022-06-02T07:55:42.670Z",
        "isNew": false
      }
    },
    {
      "id": "635a29dd3d72938492c22ab8",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635a272c3d72938492c224b9",
      "date": null,
      "createdDate": "2022-10-27T06:49:01.117",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: fmtrack.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T06:37:32.803Z",
        "lastModifiedDate": "2022-10-27T06:37:32.803Z",
        "id": "635a272c3d72938492c224b9",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "52.20.184.207",
        "ips": ["52.70.226.45", "52.20.184.207"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635a272c3d72938492c224b8",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T06:37:32.802Z",
        "openPortLastModifiedDate": "2022-10-27T06:37:32.802Z",
        "configLastModifiedDate": "2022-10-27T06:37:32.802Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635634253d72938bf83876ae",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356298d3d72938bf8387189",
      "date": null,
      "createdDate": "2022-10-24T06:43:49.546",
      "orgId": 1,
      "title": "You have non-standard ports 80 opened",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:37.982Z",
        "lastModifiedDate": "2022-10-24T05:58:37.982Z",
        "id": "6356298d3d72938bf8387189",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "40.99.31.152",
        "ips": [
          "40.99.9.168",
          "40.100.141.168",
          "40.99.31.136",
          "40.99.31.152"
        ],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[de8a5269-5763-4f06-34e9-d51169627b19], X-FEServer=[PN3PR01CA0085, PN3PR01CA0085], X-RequestId=[0e079884-9967-4753-92fc-2165e32f5238], X-FEProxyInfo=[PN3PR01CA0085.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[aVKK3mNXBk806dURaWJ7GQ.0], X-Powered-By=[ASP.NET], Date=[Mon, 24 Oct 2022 05:12:46 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6356298d3d72938bf8387188",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:37.981Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:37.981Z",
        "configLastModifiedDate": "2022-10-24T05:58:37.981Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635634253d72938bf83876ad",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635629703d72938bf8387182",
      "date": null,
      "createdDate": "2022-10-24T06:43:49.485",
      "orgId": 1,
      "title":
          "You have non-standard ports 8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "campg-issa.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "campg-issa.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:08.149Z",
        "lastModifiedDate": "2022-10-24T05:58:08.149Z",
        "id": "635629703d72938bf8387182",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "campg-issa.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "campg-issa.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:42:45 GMT], Content-Type=[text/html], Transfer-Encoding=[chunked], Connection=[keep-alive], CF-Ray=[75f0640c4e138614-BOM], Accept-Ranges=[bytes], Access-Control-Allow-Origin=[*], Cache-Control=[no-cache, no-store, must-revalidate], Expires=[Tue, 24 Oct 2023 05:42:44 GMT], Last-Modified=[Thu, 01 Sep 2022 19:05:45 GMT], CF-Cache-Status=[DYNAMIC], Access-Control-Expose-Headers=[Origin, Content-Type, Content-Length, Accept-Encoding, Access-Control-Allow-Origin], x-goog-generation=[1662059145720478], x-goog-hash=[crc32c=Wv1tPA==, md5=2oJKDdl/vrwvcKrlAXfGfw==], x-goog-meta-cache-tag=[47ftnryq], x-goog-meta-optimized=[false], x-goog-metageneration=[1], x-goog-storage-class=[STANDARD], x-goog-stored-content-encoding=[identity], x-goog-stored-content-length=[208673], X-GUploader-UploadID=[ADPycdt_QU1RbzLM-KAgNm7cvS0QGTFTq1YlTbzVhhQMfoPB1zo1bQcuubFrztnR5QXw0tgR8M_md1YE7WFsnm-OGkE6ttjNWztZ], Server=[cloudflare]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:08.148Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:08.148Z",
        "configLastModifiedDate": "2022-10-24T05:58:08.148Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad4c",
        "subDomainCreatedDate": "2022-10-04T08:08:19.115Z",
        "isNew": false
      }
    },
    {
      "id": "635634253d72938bf83876ac",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356296e3d72938bf8387181",
      "date": null,
      "createdDate": "2022-10-24T06:43:49.412",
      "orgId": 1,
      "title":
          "You have non-standard ports 8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "kyndrylwebinar.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "kyndrylwebinar.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:06.579Z",
        "lastModifiedDate": "2022-10-24T05:58:06.579Z",
        "id": "6356296e3d72938bf8387181",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "kyndrylwebinar.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "kyndrylwebinar.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:43:11 GMT], Transfer-Encoding=[chunked], Connection=[keep-alive], Cache-Control=[max-age=3600], Expires=[Mon, 24 Oct 2022 06:43:11 GMT], Location=[https://kyndrylwebinar.cyfirma.com/], Server=[cloudflare], CF-RAY=[75f064b85e7b85d9-BOM]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:06.579Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:06.579Z",
        "configLastModifiedDate": "2022-10-24T05:58:06.579Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad4d",
        "subDomainCreatedDate": "2022-10-04T08:08:19.151Z",
        "isNew": false
      }
    },
    {
      "id": "635634253d72938bf83876ab",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356296d3d72938bf8387180",
      "date": null,
      "createdDate": "2022-10-24T06:43:49.137",
      "orgId": 1,
      "title":
          "You have non-standard ports 8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "kyndrylwebinarc.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "kyndrylwebinarc.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:05.718Z",
        "lastModifiedDate": "2022-10-24T05:58:05.718Z",
        "id": "6356296d3d72938bf8387180",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "kyndrylwebinarc.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "kyndrylwebinarc.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:43:40 GMT], Transfer-Encoding=[chunked], Connection=[keep-alive], Cache-Control=[max-age=3600], Expires=[Mon, 24 Oct 2022 06:43:40 GMT], Location=[https://kyndrylwebinarc.cyfirma.com/], Server=[cloudflare], CF-RAY=[75f0656d68ac0e7c-BOM]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:05.718Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:05.718Z",
        "configLastModifiedDate": "2022-10-24T05:58:05.718Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad4e",
        "subDomainCreatedDate": "2022-10-04T08:08:19.183Z",
        "isNew": false
      }
    },
    {
      "id": "635634243d72938bf83876aa",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356296c3d72938bf838717f",
      "date": null,
      "createdDate": "2022-10-24T06:43:48.981",
      "orgId": 1,
      "title":
          "You have non-standard ports 8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "kyndrylwebinar0922.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "kyndrylwebinar0922.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:04.184Z",
        "lastModifiedDate": "2022-10-24T05:58:04.184Z",
        "id": "6356296c3d72938bf838717f",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "kyndrylwebinar0922.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "kyndrylwebinar0922.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:44:35 GMT], Transfer-Encoding=[chunked], Connection=[keep-alive], Cache-Control=[max-age=3600], Expires=[Mon, 24 Oct 2022 06:44:35 GMT], Location=[https://kyndrylwebinar0922.cyfirma.com/], Server=[cloudflare], CF-RAY=[75f066c8aa2df42d-BOM]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:04.183Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:04.183Z",
        "configLastModifiedDate": "2022-10-24T05:58:04.183Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad50",
        "subDomainCreatedDate": "2022-10-04T08:08:19.225Z",
        "isNew": false
      }
    },
    {
      "id": "635634243d72938bf83876a9",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635629693d72938bf838717e",
      "date": null,
      "createdDate": "2022-10-24T06:43:48.845",
      "orgId": 1,
      "title": "You have non-standard ports 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:01.760Z",
        "lastModifiedDate": "2022-10-24T05:58:01.760Z",
        "id": "635629693d72938bf838717e",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "34.202.95.183",
        "ips": ["52.21.124.178", "34.202.95.183"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635629663d72938bf838717d",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:01.759Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:01.759Z",
        "configLastModifiedDate": "2022-10-24T05:58:01.759Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635634033d72938bf83876a8",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356298d3d72938bf8387189",
      "date": null,
      "createdDate": "2022-10-24T06:43:15.138",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: autodiscover.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:37.982Z",
        "lastModifiedDate": "2022-10-24T05:58:37.982Z",
        "id": "6356298d3d72938bf8387189",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "40.99.31.152",
        "ips": [
          "40.99.9.168",
          "40.100.141.168",
          "40.99.31.136",
          "40.99.31.152"
        ],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[de8a5269-5763-4f06-34e9-d51169627b19], X-FEServer=[PN3PR01CA0085, PN3PR01CA0085], X-RequestId=[0e079884-9967-4753-92fc-2165e32f5238], X-FEProxyInfo=[PN3PR01CA0085.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[aVKK3mNXBk806dURaWJ7GQ.0], X-Powered-By=[ASP.NET], Date=[Mon, 24 Oct 2022 05:12:46 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6356298d3d72938bf8387188",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:37.981Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:37.981Z",
        "configLastModifiedDate": "2022-10-24T05:58:37.981Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635634033d72938bf83876a7",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635629703d72938bf8387182",
      "date": null,
      "createdDate": "2022-10-24T06:43:15.001",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: campg-issa.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "campg-issa.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "campg-issa.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:08.149Z",
        "lastModifiedDate": "2022-10-24T05:58:08.149Z",
        "id": "635629703d72938bf8387182",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "campg-issa.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "campg-issa.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:42:45 GMT], Content-Type=[text/html], Transfer-Encoding=[chunked], Connection=[keep-alive], CF-Ray=[75f0640c4e138614-BOM], Accept-Ranges=[bytes], Access-Control-Allow-Origin=[*], Cache-Control=[no-cache, no-store, must-revalidate], Expires=[Tue, 24 Oct 2023 05:42:44 GMT], Last-Modified=[Thu, 01 Sep 2022 19:05:45 GMT], CF-Cache-Status=[DYNAMIC], Access-Control-Expose-Headers=[Origin, Content-Type, Content-Length, Accept-Encoding, Access-Control-Allow-Origin], x-goog-generation=[1662059145720478], x-goog-hash=[crc32c=Wv1tPA==, md5=2oJKDdl/vrwvcKrlAXfGfw==], x-goog-meta-cache-tag=[47ftnryq], x-goog-meta-optimized=[false], x-goog-metageneration=[1], x-goog-storage-class=[STANDARD], x-goog-stored-content-encoding=[identity], x-goog-stored-content-length=[208673], X-GUploader-UploadID=[ADPycdt_QU1RbzLM-KAgNm7cvS0QGTFTq1YlTbzVhhQMfoPB1zo1bQcuubFrztnR5QXw0tgR8M_md1YE7WFsnm-OGkE6ttjNWztZ], Server=[cloudflare]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:08.148Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:08.148Z",
        "configLastModifiedDate": "2022-10-24T05:58:08.148Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad4c",
        "subDomainCreatedDate": "2022-10-04T08:08:19.115Z",
        "isNew": false
      }
    },
    {
      "id": "635634023d72938bf83876a6",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356296e3d72938bf8387181",
      "date": null,
      "createdDate": "2022-10-24T06:43:14.854",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: kyndrylwebinar.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "kyndrylwebinar.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "kyndrylwebinar.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:06.579Z",
        "lastModifiedDate": "2022-10-24T05:58:06.579Z",
        "id": "6356296e3d72938bf8387181",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "kyndrylwebinar.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "kyndrylwebinar.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:43:11 GMT], Transfer-Encoding=[chunked], Connection=[keep-alive], Cache-Control=[max-age=3600], Expires=[Mon, 24 Oct 2022 06:43:11 GMT], Location=[https://kyndrylwebinar.cyfirma.com/], Server=[cloudflare], CF-RAY=[75f064b85e7b85d9-BOM]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:06.579Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:06.579Z",
        "configLastModifiedDate": "2022-10-24T05:58:06.579Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad4d",
        "subDomainCreatedDate": "2022-10-04T08:08:19.151Z",
        "isNew": false
      }
    },
    {
      "id": "635634023d72938bf83876a5",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6356296d3d72938bf8387180",
      "date": null,
      "createdDate": "2022-10-24T06:43:14.693",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: kyndrylwebinarc.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "kyndrylwebinarc.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "kyndrylwebinarc.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-24T05:58:05.718Z",
        "lastModifiedDate": "2022-10-24T05:58:05.718Z",
        "id": "6356296d3d72938bf8387180",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "kyndrylwebinarc.cyfirma.com",
        "ip": "104.18.192.184",
        "ips": [
          "104.18.192.184",
          "104.18.190.184",
          "104.18.191.184",
          "104.18.188.184",
          "104.18.189.184"
        ],
        "source": "kyndrylwebinarc.cyfirma.com",
        "sourceDataElement":
            "{Date=[Mon, 24 Oct 2022 05:43:40 GMT], Transfer-Encoding=[chunked], Connection=[keep-alive], Cache-Control=[max-age=3600], Expires=[Mon, 24 Oct 2022 06:43:40 GMT], Location=[https://kyndrylwebinarc.cyfirma.com/], Server=[cloudflare], CF-RAY=[75f0656d68ac0e7c-BOM]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288bc9f3d72934958b348ab",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [8080, 2082, 2083, 2086, 2087, 80, 8880, 8443, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-24T05:58:05.718Z",
        "openPortLastModifiedDate": "2022-10-24T05:58:05.718Z",
        "configLastModifiedDate": "2022-10-24T05:58:05.718Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad4e",
        "subDomainCreatedDate": "2022-10-04T08:08:19.183Z",
        "isNew": false
      }
    }
  ];
  static List alerts2 = [
    {
      "id": "6361df233d72932a0ffc34c2",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6361da713d72932a0ffc33fe",
      "date": null,
      "createdDate": "2022-11-02T03:08:19.425",
      "orgId": 1,
      "title": "Malicious IP Detected",
      "description":
          "This Domain/IP address has been reported 0 times by 0 distinct sources for hacking attempts or other malicious behavior, most recent report is on .",
      "riskScore": 1,
      "source": "AbuseIPDB",
      "category": "Attack Surface",
      "subCategory": "IP / DOMAIN REPUTATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-11-02T02:48:17.244Z",
        "lastModifiedDate": "2022-11-02T02:48:17.244Z",
        "id": "6361da713d72932a0ffc33fe",
        "ip": "52.7.29.251",
        "isPublic": true,
        "isWhitelisted": null,
        "countryCode": "US",
        "countryName": "United States of America",
        "usageType": "Data Center/Web Hosting/Transit",
        "isp": "Amazon Technologies Inc.",
        "domain": "cyfirma.com",
        "subDomain": "fmtrack.cyfirma.com",
        "dnsDomain": "amazon.com",
        "hostnames": ["ec2-52-7-29-251.compute-1.amazonaws.com"],
        "lastReportedAt": null,
        "source": "AbuseIPDB",
        "numDistinctUsers": 0,
        "ipVersion": 4,
        "abuseConfidenceScore": 0,
        "totalReports": 0,
        "orgId": 1,
        "cyfirmaScore": 1,
        "categoriesIds": [],
        "categoriesNames": [],
        "categoriesDetails": [],
        "reports": [],
        "isSafe": false,
        "safeMarkedTime": null,
        "safeMarkedBy": null,
        "safeMarkComments": null,
        "drdEmailSent": false,
        "isThirdParty": false,
        "location": null,
        "notes": null,
        "threatActors": []
      }
    },
    {
      "id": "6361df233d72932a0ffc34c1",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6361da713d72932a0ffc33fd",
      "date": null,
      "createdDate": "2022-11-02T03:08:19.307",
      "orgId": 1,
      "title": "Malicious IP Detected",
      "description":
          "This Domain/IP address has been reported 0 times by 0 distinct sources for hacking attempts or other malicious behavior, most recent report is on .",
      "riskScore": 1,
      "source": "AbuseIPDB",
      "category": "Attack Surface",
      "subCategory": "IP / DOMAIN REPUTATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-11-02T02:48:17.242Z",
        "lastModifiedDate": "2022-11-02T02:48:17.242Z",
        "id": "6361da713d72932a0ffc33fd",
        "ip": "3.221.14.223",
        "isPublic": true,
        "isWhitelisted": null,
        "countryCode": "US",
        "countryName": "United States of America",
        "usageType": "Data Center/Web Hosting/Transit",
        "isp": "Amazon Data Services NoVa",
        "domain": "cyfirma.com",
        "subDomain": "fmtrack.cyfirma.com",
        "dnsDomain": "amazon.com",
        "hostnames": ["ec2-3-221-14-223.compute-1.amazonaws.com"],
        "lastReportedAt": null,
        "source": "AbuseIPDB",
        "numDistinctUsers": 0,
        "ipVersion": 4,
        "abuseConfidenceScore": 0,
        "totalReports": 0,
        "orgId": 1,
        "cyfirmaScore": 1,
        "categoriesIds": [],
        "categoriesNames": [],
        "categoriesDetails": [],
        "reports": [],
        "isSafe": false,
        "safeMarkedTime": null,
        "safeMarkedBy": null,
        "safeMarkComments": null,
        "drdEmailSent": false,
        "isThirdParty": false,
        "location": null,
        "notes": null,
        "threatActors": []
      }
    },
    {
      "id": "6361df233d72932a0ffc34c0",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6361da713d72932a0ffc33fc",
      "date": null,
      "createdDate": "2022-11-02T03:08:19.172",
      "orgId": 1,
      "title": "Malicious IP Detected",
      "description":
          "This Domain/IP address has been reported 0 times by 0 distinct sources for hacking attempts or other malicious behavior, most recent report is on .",
      "riskScore": 1,
      "source": "AbuseIPDB",
      "category": "Attack Surface",
      "subCategory": "IP / DOMAIN REPUTATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-11-02T02:48:17.238Z",
        "lastModifiedDate": "2022-11-02T02:48:17.238Z",
        "id": "6361da713d72932a0ffc33fc",
        "ip": "13.126.106.193",
        "isPublic": true,
        "isWhitelisted": null,
        "countryCode": "IN",
        "countryName": "India",
        "usageType": "Data Center/Web Hosting/Transit",
        "isp": "Amazon Data Services India",
        "domain": "cyfirma.com",
        "subDomain": "fwtrack.cyfirma.com",
        "dnsDomain": "amazon.com",
        "hostnames": ["ec2-13-126-106-193.ap-south-1.compute.amazonaws.com"],
        "lastReportedAt": null,
        "source": "AbuseIPDB",
        "numDistinctUsers": 0,
        "ipVersion": 4,
        "abuseConfidenceScore": 0,
        "totalReports": 0,
        "orgId": 1,
        "cyfirmaScore": 1,
        "categoriesIds": [],
        "categoriesNames": [],
        "categoriesDetails": [],
        "reports": [],
        "isSafe": false,
        "safeMarkedTime": null,
        "safeMarkedBy": null,
        "safeMarkComments": null,
        "drdEmailSent": false,
        "isThirdParty": false,
        "location": null,
        "notes": null,
        "threatActors": []
      }
    },
    {
      "id": "6361df223d72932a0ffc34bf",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6361da713d72932a0ffc33fb",
      "date": null,
      "createdDate": "2022-11-02T03:08:18.938",
      "orgId": 1,
      "title": "Malicious IP Detected",
      "description":
          "This Domain/IP address has been reported 0 times by 0 distinct sources for hacking attempts or other malicious behavior, most recent report is on .",
      "riskScore": 1,
      "source": "AbuseIPDB",
      "category": "Attack Surface",
      "subCategory": "IP / DOMAIN REPUTATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-11-02T02:48:17.234Z",
        "lastModifiedDate": "2022-11-02T02:48:17.234Z",
        "id": "6361da713d72932a0ffc33fb",
        "ip": "13.234.93.220",
        "isPublic": true,
        "isWhitelisted": null,
        "countryCode": "IN",
        "countryName": "India",
        "usageType": "Data Center/Web Hosting/Transit",
        "isp": "Amazon Data Services India",
        "domain": "cyfirma.com",
        "subDomain": "fwtrack.cyfirma.com",
        "dnsDomain": "amazon.com",
        "hostnames": ["ec2-13-234-93-220.ap-south-1.compute.amazonaws.com"],
        "lastReportedAt": null,
        "source": "AbuseIPDB",
        "numDistinctUsers": 0,
        "ipVersion": 4,
        "abuseConfidenceScore": 0,
        "totalReports": 0,
        "orgId": 1,
        "cyfirmaScore": 1,
        "categoriesIds": [],
        "categoriesNames": [],
        "categoriesDetails": [],
        "reports": [],
        "isSafe": false,
        "safeMarkedTime": null,
        "safeMarkedBy": null,
        "safeMarkComments": null,
        "drdEmailSent": false,
        "isThirdParty": false,
        "location": null,
        "notes": null,
        "threatActors": []
      }
    },
    {
      "id": "6361df223d72932a0ffc34be",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "6361da713d72932a0ffc33fa",
      "date": null,
      "createdDate": "2022-11-02T03:08:18.664",
      "orgId": 1,
      "title": "Malicious IP Detected",
      "description":
          "This Domain/IP address has been reported 0 times by 0 distinct sources for hacking attempts or other malicious behavior, most recent report is on .",
      "riskScore": 1,
      "source": "AbuseIPDB",
      "category": "Attack Surface",
      "subCategory": "IP / DOMAIN REPUTATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-11-02T02:48:17.231Z",
        "lastModifiedDate": "2022-11-02T02:48:17.231Z",
        "id": "6361da713d72932a0ffc33fa",
        "ip": "35.72.96.209",
        "isPublic": true,
        "isWhitelisted": null,
        "countryCode": "JP",
        "countryName": "Japan",
        "usageType": "Data Center/Web Hosting/Transit",
        "isp": "Amazon Data Services Japan",
        "domain": "cyfirma.com",
        "subDomain": "cyfirma.com",
        "dnsDomain": "amazon.com",
        "hostnames": ["ec2-35-72-96-209.ap-northeast-1.compute.amazonaws.com"],
        "lastReportedAt": null,
        "source": "AbuseIPDB",
        "numDistinctUsers": 0,
        "ipVersion": 4,
        "abuseConfidenceScore": 0,
        "totalReports": 0,
        "orgId": 1,
        "cyfirmaScore": 1,
        "categoriesIds": [],
        "categoriesNames": [],
        "categoriesDetails": [],
        "reports": [],
        "isSafe": false,
        "safeMarkedTime": null,
        "safeMarkedBy": null,
        "safeMarkComments": null,
        "drdEmailSent": false,
        "isThirdParty": false,
        "location": null,
        "notes": null,
        "threatActors": []
      }
    },
    {
      "id": "635f9f983d7293962a8db0fb",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "634aef6f3d7293fca41ae5af",
      "date": null,
      "createdDate": "2022-10-31T10:12:40.398",
      "orgId": 1,
      "title": "There are Weak Configurations for the domain: cyfirma.com",
      "description": null,
      "riskScore": 9,
      "source": "cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "CONFIGURATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-15T17:35:43.217Z",
        "lastModifiedDate": "2022-10-30T22:22:32.264Z",
        "id": "634aef6f3d7293fca41ae5af",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "cyfirma.com",
        "ip": "54.249.31.228",
        "ips": ["54.249.31.228", "35.72.96.209"],
        "source": "cyfirma.com",
        "sourceDataElement":
            "{Date=[Sun, 30 Oct 2022 21:59:27 GMT], Content-Type=[text/html; charset=UTF-8], Transfer-Encoding=[chunked], Connection=[keep-alive], set-cookie=[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly], expires=[Thu, 19 Nov 1981 08:52:00 GMT], Cache-Control=[no-store, no-cache, must-revalidate], pragma=[no-cache], access-control-allow-origin=[https://www.cyfirma.com/], link=[<https://www.cyfirma.com/wp-json/>; rel=\"https://api.w.org/\", <https://www.cyfirma.com/wp-json/wp/v2/pages/13>; rel=\"alternate\"; type=\"application/json\", <https://www.cyfirma.com/>; rel=shortlink], vary=[Accept-Encoding], CF-Cache-Status=[DYNAMIC], Server=[cloudflare], CF-RAY=[76276afbddbef33b-BOM]}",
        "software": "",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {},
        "technologyList": ["cloudflare"],
        "technologyStack": null,
        "cookies":
            "[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly]",
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "634aef6f3d7293fca41ae5ae",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": true,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": true,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 9,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:22:32.264Z",
        "openPortLastModifiedDate": "2022-10-30T22:22:32.264Z",
        "configLastModifiedDate": "2022-10-30T22:22:32.264Z",
        "threatActors": [],
        "subDomainUID": "625fcd733d7293cd2cc4966d",
        "subDomainCreatedDate": "2022-04-20T09:08:03.389Z",
        "isNew": false
      }
    },
    {
      "id": "635f9f983d7293962a8db0fa",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635efb1e3d72934a4d174f9d",
      "date": null,
      "createdDate": "2022-10-31T10:12:40.325",
      "orgId": 1,
      "title": "There are Weak Configurations for the domain: cyfirma.com",
      "description":
          "You have software php 5.2.17, http_server 2.2.15, jquery cloudflare running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">GCMAN</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">RTM</span>, <span class=\"active-txt TA\">Stone Panda</span>, <span class=\"active-txt TA\">TATestFORAsset</span>, <span class=\"active-txt TA\">Test_New_ThreatActor</span>",
      "riskScore": 9,
      "source": "cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "CONFIGURATION",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:30:54.766Z",
        "lastModifiedDate": "2022-10-30T22:30:54.766Z",
        "id": "635efb1e3d72934a4d174f9d",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "cyfirma.com",
        "ip": "35.72.96.209",
        "ips": ["54.249.31.228", "35.72.96.209"],
        "source": "cyfirma.com",
        "sourceDataElement":
            "{Date=[Sun, 30 Oct 2022 21:59:27 GMT], Content-Type=[text/html; charset=UTF-8], Transfer-Encoding=[chunked], Connection=[keep-alive], set-cookie=[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly], expires=[Thu, 19 Nov 1981 08:52:00 GMT], Cache-Control=[no-store, no-cache, must-revalidate], pragma=[no-cache], access-control-allow-origin=[https://www.cyfirma.com/], link=[<https://www.cyfirma.com/wp-json/>; rel=\"https://api.w.org/\", <https://www.cyfirma.com/wp-json/wp/v2/pages/13>; rel=\"alternate\"; type=\"application/json\", <https://www.cyfirma.com/>; rel=shortlink], vary=[Accept-Encoding], CF-Cache-Status=[DYNAMIC], Server=[cloudflare], CF-RAY=[76276afbddbef33b-BOM]}",
        "software": "php 5.2.17, http_server 2.2.15, jquery ",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {
          "php": "5.2.17",
          "http.server": "2.2.15",
          "jquery": ""
        },
        "technologyList": [
          "http server",
          "php",
          "cloudflare",
          "http_server",
          "jquery"
        ],
        "technologyStack": null,
        "cookies":
            "[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly]",
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": true,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [
          "CVE-2014-0118",
          "CVE-2014-0238",
          "CVE-2011-1148",
          "CVE-2011-4415",
          "CVE-2014-0231",
          "CVE-2016-5387",
          "CVE-2014-3981",
          "CVE-2014-0237",
          "CVE-2014-0236",
          "CVE-2017-9224",
          "CVE-2016-2554",
          "CVE-2017-7963",
          "CVE-2016-4975",
          "CVE-2017-9226",
          "CVE-2011-1939",
          "CVE-2016-1903",
          "CVE-2006-7243",
          "CVE-2011-1153",
          "CVE-2022-28615",
          "CVE-2011-2483",
          "CVE-2011-1398",
          "CVE-2014-0226",
          "CVE-2010-2068",
          "CVE-2013-6501",
          "CVE-2018-7584",
          "CVE-2018-14851",
          "CVE-2019-9024",
          "CVE-2019-9023",
          "CVE-2019-9020",
          "CVE-2019-9021",
          "CVE-2014-9705",
          "CVE-2016-3185",
          "CVE-2021-34798",
          "CVE-2021-40438",
          "CVE-2013-6712",
          "CVE-2013-2110",
          "CVE-2022-28614",
          "CVE-2011-0708",
          "CVE-2013-1824",
          "CVE-2015-8935",
          "CVE-2018-15132",
          "CVE-2014-0207",
          "CVE-2012-2311",
          "CVE-2016-7413",
          "CVE-2016-7414",
          "CVE-2011-4885",
          "CVE-2016-7411",
          "CVE-2016-7412",
          "CVE-2016-5114",
          "CVE-2016-8743",
          "CVE-2014-5459",
          "CVE-2016-7417",
          "CVE-2016-7418",
          "CVE-2016-7416",
          "CVE-2022-22721",
          "CVE-2012-2687",
          "CVE-2012-2688",
          "CVE-2022-22720",
          "CVE-2016-8612",
          "CVE-2011-3368",
          "CVE-2014-3668",
          "CVE-2014-3669",
          "CVE-2014-9767",
          "CVE-2013-4635",
          "CVE-2010-4699",
          "CVE-2017-9788",
          "CVE-2015-9253",
          "CVE-2017-12933",
          "CVE-2018-14883",
          "CVE-2015-8835",
          "CVE-2015-4598",
          "CVE-2015-4599",
          "CVE-2015-4116",
          "CVE-2016-10712",
          "CVE-2015-8838",
          "CVE-2012-2336",
          "CVE-2016-10159",
          "CVE-2016-10158",
          "CVE-2016-9138",
          "CVE-2016-9137",
          "CVE-2016-10397",
          "CVE-2011-0421",
          "CVE-2022-22719",
          "CVE-2016-10161",
          "CVE-2016-9935",
          "CVE-2012-0831",
          "CVE-2017-9798",
          "CVE-2016-9934",
          "CVE-2011-0419",
          "CVE-2012-0031",
          "CVE-2015-4147",
          "CVE-2015-4026",
          "CVE-2011-0755",
          "CVE-2015-4148",
          "CVE-2011-0754",
          "CVE-2018-19520",
          "CVE-2011-0753",
          "CVE-2011-3348",
          "CVE-2011-4317",
          "CVE-2016-3141",
          "CVE-2016-3142",
          "CVE-2017-11145",
          "CVE-2013-7327",
          "CVE-2017-11142",
          "CVE-2017-11144",
          "CVE-2015-0228",
          "CVE-2017-11143",
          "CVE-2015-5590",
          "CVE-2015-4021",
          "CVE-2015-4022",
          "CVE-2015-8865",
          "CVE-2015-4024",
          "CVE-2013-5704",
          "CVE-2015-4025",
          "CVE-2015-5589",
          "CVE-2019-9637",
          "CVE-2014-4721",
          "CVE-2016-4342",
          "CVE-2016-4343",
          "CVE-2019-9639",
          "CVE-2019-9638",
          "CVE-2012-1823",
          "CVE-2014-3515",
          "CVE-2022-30556",
          "CVE-2012-0057",
          "CVE-2012-0053",
          "CVE-2017-7272",
          "CVE-2015-4600",
          "CVE-2011-3607",
          "CVE-2015-4601",
          "CVE-2019-9641",
          "CVE-2015-4602",
          "CVE-2021-39275",
          "CVE-2015-4603",
          "CVE-2015-4604",
          "CVE-2015-4605",
          "CVE-2014-3587",
          "CVE-2014-2497",
          "CVE-2009-4418",
          "CVE-2008-0455",
          "CVE-2014-4670",
          "CVE-2015-2787",
          "CVE-2012-3450",
          "CVE-2010-4657",
          "CVE-2015-2783",
          "CVE-2016-5094",
          "CVE-2015-8879",
          "CVE-2016-5093",
          "CVE-2015-8877",
          "CVE-2016-5096",
          "CVE-2016-5095",
          "CVE-2012-2376",
          "CVE-2015-3183",
          "CVE-2012-4558",
          "CVE-2012-4557",
          "CVE-2016-5773",
          "CVE-2016-5772",
          "CVE-2016-5771",
          "CVE-2016-5770",
          "CVE-2010-4409",
          "CVE-2017-16642",
          "CVE-2015-0231",
          "CVE-2022-31628",
          "CVE-2015-8994",
          "CVE-2015-8873",
          "CVE-2015-0232",
          "CVE-2022-31629",
          "CVE-2015-8874",
          "CVE-2015-1351",
          "CVE-2012-2143",
          "CVE-2016-6292",
          "CVE-2015-1352",
          "CVE-2016-6174",
          "CVE-2016-6295",
          "CVE-2012-2386",
          "CVE-2016-6294",
          "CVE-2016-6291",
          "CVE-2016-6290",
          "CVE-2011-3267",
          "CVE-2011-3268",
          "CVE-2016-6297",
          "CVE-2014-9427",
          "CVE-2016-6296",
          "CVE-2014-9426",
          "CVE-2016-5769",
          "CVE-2013-6438",
          "CVE-2014-9425",
          "CVE-2016-5768",
          "CVE-2012-0883",
          "CVE-2017-11628",
          "CVE-2012-1171",
          "CVE-2015-3412",
          "CVE-2012-1172",
          "CVE-2015-3411",
          "CVE-2022-28330",
          "CVE-2016-7130",
          "CVE-2016-7131",
          "CVE-2012-3365",
          "CVE-2016-4541",
          "CVE-2016-4540",
          "CVE-2016-6289",
          "CVE-2016-4543",
          "CVE-2016-4542",
          "CVE-2018-20783",
          "CVE-2016-7132",
          "CVE-2016-6288",
          "CVE-2014-9653",
          "CVE-2014-9652",
          "CVE-2011-1092",
          "CVE-2014-3670",
          "CVE-2015-4642",
          "CVE-2011-1469",
          "CVE-2015-4643",
          "CVE-2011-1468",
          "CVE-2015-4644",
          "CVE-2011-1467",
          "CVE-2012-3499",
          "CVE-2016-7127",
          "CVE-2018-17082",
          "CVE-2016-7128",
          "CVE-2016-7125",
          "CVE-2016-7126",
          "CVE-2011-1466",
          "CVE-2016-7124",
          "CVE-2011-1464",
          "CVE-2016-4538",
          "CVE-2016-4537",
          "CVE-2013-1643",
          "CVE-2016-4539",
          "CVE-2017-3167",
          "CVE-2022-29404",
          "CVE-2012-0789",
          "CVE-2012-0788",
          "CVE-2017-3169",
          "CVE-2016-7129",
          "CVE-2015-2348",
          "CVE-2015-0273",
          "CVE-2015-2331",
          "CVE-2021-44790",
          "CVE-2018-19396",
          "CVE-2018-19395",
          "CVE-2013-6420",
          "CVE-2011-1471",
          "CVE-2016-7478",
          "CVE-2011-1470",
          "CVE-2011-2202",
          "CVE-2014-9912",
          "CVE-2013-4248",
          "CVE-2010-1452",
          "CVE-2013-1896",
          "CVE-2014-8142",
          "CVE-2015-3307",
          "CVE-2017-7890",
          "CVE-2016-4070",
          "CVE-2011-4718",
          "CVE-2015-3330",
          "CVE-2014-0098",
          "CVE-2014-4698",
          "CVE-2014-3487",
          "CVE-2018-10546",
          "CVE-2013-1862",
          "CVE-2011-3182",
          "CVE-2014-3480",
          "CVE-2018-10545",
          "CVE-2018-10549",
          "CVE-2018-10548",
          "CVE-2018-10547",
          "CVE-2022-31813",
          "CVE-2015-6832",
          "CVE-2011-3639",
          "CVE-2015-6831",
          "CVE-2015-6834",
          "CVE-2015-6833",
          "CVE-2015-6836",
          "CVE-2015-7804",
          "CVE-2015-6835",
          "CVE-2015-7803",
          "CVE-2015-6838",
          "CVE-2015-6837",
          "CVE-2016-5399",
          "CVE-2014-3478",
          "CVE-2014-3597",
          "CVE-2014-3479",
          "CVE-2017-7679",
          "CVE-2014-2020",
          "CVE-2011-3192",
          "CVE-2015-3329",
          "CVE-2013-1635",
          "CVE-2018-1302",
          "CVE-2018-1301",
          "CVE-2018-1303"
        ],
        "cveDetails": [
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-2068",
            "description":
                " mod_proxy_http.c in mod_proxy_http in the Apache HTTP Server 2.2.9 through 2.2.15, 2.3.4-alpha, and 2.3.5-alpha on Windows, NetWare, and OS/2, in certain configurations involving proxy worker pools, does not properly detect timeouts, which allows remote attackers to obtain a potentially sensitive response intended for a different client in opportunistic circumstances via a normal HTTP request..",
            "vendors": ["apache", "ibm", "novell", "microsoft"],
            "products": ["http server", "netware", "windows", "os2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-2110",
            "description":
                " Heap-based buffer overflow in the php_quot_print_encode function in ext/standard/quot_print.c in PHP before 5.3.26 and 5.4.x before 5.4.16 allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a crafted argument to the quoted_printable_encode function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2018-10549",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. exif_read_data in ext/exif/exif.c has an out-of-bounds read for crafted JPEG data because exif_iif_add_value mishandles the case of a MakerNote that lacks a final '\\0' character..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-10548",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. ext/ldap/ldap.c allows remote LDAP servers to cause a denial of service (NULL pointer dereference and application crash) because of mishandling of the ldap_get_dn return value..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-3141",
            "description":
                " Use-after-free vulnerability in wddx.c in the WDDX extension in PHP before 5.5.33 and 5.6.x before 5.6.19 allows remote attackers to cause a denial of service (memory corruption and application crash) or possibly have unspecified other impact by triggering a wddx_deserialize call on XML data containing a crafted var element..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.7,
            "cveNo": "CVE-2018-10545",
            "description":
                " An issue was discovered in PHP before 5.6.35, 7.0.x before 7.0.29, 7.1.x before 7.1.16, and 7.2.x before 7.2.4. Dumpable FPM child processes allow bypassing opcache access controls because fpm_unix.c makes a PR_SET_DUMPABLE prctl call, allowing one user (in a multiuser environment) to obtain sensitive information from the process memory of a second user's PHP applications by running gcore on the PID of the PHP-FPM worker process..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-0118",
            "description":
                " The deflate_in_filter function in mod_deflate.c in the mod_deflate module in the Apache HTTP Server before 2.4.10, when request body decompression is enabled, allows remote attackers to cause a denial of service (resource consumption) via crafted request data that decompresses to a much larger size..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-10546",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. An infinite loop exists in ext/iconv/iconv.c because the iconv stream filter does not reject invalid multibyte sequences..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.4,
            "cveNo": "CVE-2017-7272",
            "description":
                " PHP through 7.1.11 enables potential SSRF in applications that accept an fsockopen or pfsockopen hostname argument with an expectation that the port number is constrained. Because a :port syntax is recognized, fsockopen will use the port number that is specified in the hostname argument, instead of the port number in the second argument of the function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-9798",
            "description":
                " Apache httpd allows remote attackers to read secret data from process memory if the Limit directive can be set in a user's .htaccess file, or if httpd.conf has certain misconfigurations, aka Optionsbleed. This affects the Apache HTTP Server through 2.2.34 and 2.4.x through 2.4.27. The attacker sends an unauthenticated OPTIONS HTTP request when attempting to read secret data. This is a use-after-free issue and thus secret data is not always sent, and the specific data depends on many factors including configuration. Exploitation with .htaccess can be blocked with a patch to the ap_limit_section function in server/core.c..",
            "vendors": ["apache", "debian"],
            "products": ["http server"],
            "exploits": [
              "webapps : Linux : 42745 Apache &lt; 2.2.34 / &lt; 2.4.27 - OPTIONS Memory Leak"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-0231",
            "description":
                " Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages improper handling of duplicate numerical keys within the serialized properties of an object.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2014-8142...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-0232",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/824.html\">CWE-824: Access of Uninitialized Pointer</a>..  The exif_process_unicode function in ext/exif/exif.c in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5 allows remote attackers to execute arbitrary code or cause a denial of service (uninitialized pointer free and application crash) via crafted EXIF data in a JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-3183",
            "description":
                " The chunked transfer coding implementation in the Apache HTTP Server before 2.4.14 does not properly parse chunk headers, which allows remote attackers to conduct HTTP request smuggling attacks via a crafted request, related to mishandling of large chunk-size values and invalid chunk-extension characters in modules/http/http_filters.c..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.4,
            "cveNo": "CVE-2011-2202",
            "description":
                " The rfc1867_post_handler function in main/rfc1867.c in PHP before 5.3.7 does not properly restrict filenames in multipart/form-data POST requests, which allows remote attackers to conduct absolute path traversal attacks, and possibly create or overwrite arbitrary files, via a crafted upload request, related to a \"file path injection vulnerability.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-4557",
            "description":
                " The mod_proxy_ajp module in the Apache HTTP Server 2.2.12 through 2.2.21 places a worker node into an error state upon detection of a long request-processing time, which allows remote attackers to cause a denial of service (worker consumption) via an expensive request..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.1,
            "cveNo": "CVE-2013-1862",
            "description":
                " mod_rewrite.c in the mod_rewrite module in the Apache HTTP Server 2.2.x before 2.2.25 writes data to a log file without sanitizing non-printable characters, which might allow remote attackers to execute arbitrary commands via an HTTP request containing an escape sequence for a terminal emulator..",
            "vendors": ["apache", "oracle", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2022-28330",
            "description":
                " Apache HTTP Server 2.4.53 and earlier on Windows may read beyond bounds when configured to process requests with the mod_isapi module..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-4248",
            "description":
                " The openssl_x509_parse function in openssl.c in the OpenSSL module in PHP before 5.4.18 and 5.5.x before 5.5.2 does not properly handle a '\\0' character in a domain name in the Subject Alternative Name field of an X.509 certificate, which allows man-in-the-middle attackers to spoof arbitrary SSL servers via a crafted certificate issued by a legitimate Certification Authority, a related issue to CVE-2009-2408..",
            "vendors": ["php", "canonical", "redhat"],
            "products": ["enterprise_linux", "php", "ubuntu_linux"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-8835",
            "description":
                " The make_http_soap_request function in ext/soap/php_http.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 does not properly retrieve keys, which allows remote attackers to cause a denial of service (NULL pointer dereference, type confusion, and application crash) or possibly execute arbitrary code via crafted serialized data representing a numerically indexed _cookies array, related to the SoapClient::__call method in ext/soap/soap.c...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7418",
            "description":
                " The php_wddx_push_element function in ext/wddx/wddx.c in PHP before 5.6.26 and 7.x before 7.0.11 allows remote attackers to cause a denial of service (invalid pointer access and out-of-bounds read) or possibly have unspecified other impact via an incorrect boolean element in a wddxPacket XML document, leading to mishandling in a wddx_deserialize call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-2311",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.13 and 5.4.x before 5.4.3, when configured as a CGI script (aka php-cgi), does not properly handle query strings that contain a %3D sequence but no = (equals sign) character, which allows remote attackers to execute arbitrary code by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'd' case.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1823..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7414",
            "description":
                " The ZIP signature-verification feature in PHP before 5.6.26 and 7.x before 7.0.11 does not ensure that the uncompressed_filesize field is large enough, which allows remote attackers to cause a denial of service (out-of-bounds memory access) or possibly have unspecified other impact via a crafted PHAR archive, related to ext/phar/util.c and ext/phar/zip.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7416",
            "description":
                " ext/intl/msgformat/msgformat_format.c in PHP before 5.6.26 and 7.x before 7.0.11 does not properly restrict the locale length provided to the Locale class in the ICU library, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a MessageFormatter::formatMessage call with a long first argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7417",
            "description":
                " ext/spl/spl_array.c in PHP before 5.6.26 and 7.x before 7.0.11 proceeds with SplArray unserialization without validating a return value and data type, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7411",
            "description":
                " ext/standard/var_unserializer.re in PHP before 5.6.26 mishandles object-deserialization failures, which allows remote attackers to cause a denial of service (memory corruption) or possibly have unspecified other impact via an unserialize call that references a partially constructed object..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-7412",
            "description":
                " ext/mysqlnd/mysqlnd_wireprotocol.c in PHP before 5.6.26 and 7.x before 7.0.11 does not verify that a BIT field has the UNSIGNED_FLAG flag, which allows remote MySQL servers to cause a denial of service (heap-based buffer overflow) or possibly have unspecified other impact via crafted field metadata..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7413",
            "description":
                " Use-after-free vulnerability in the wddx_stack_destroy function in ext/wddx/wddx.c in PHP before 5.6.26 and 7.x before 7.0.11 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a wddxPacket XML document that lacks an end-tag for a recordset field element, leading to mishandling in a wddx_deserialize call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1468",
            "description":
                " Multiple memory leaks in the OpenSSL extension in PHP before 5.3.6 might allow remote attackers to cause a denial of service (memory consumption) via (1) plaintext data to the openssl_encrypt function or (2) ciphertext data to the openssl_decrypt function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1469",
            "description":
                " Unspecified vulnerability in the Streams component in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) by accessing an ftp:// URL during use of an HTTP proxy with the FTP wrapper..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0421",
            "description":
                " Per: http://cwe.mitre.org/data/definitions/476.html\r\n'CWE-476: NULL Pointer Dereference'..  The _zip_name_locate function in zip_name_locate.c in the Zip extension in PHP before 5.3.6 does not properly handle a ZIPARCHIVE::FL_UNCHANGED argument, which might allow context-dependent attackers to cause a denial of service (NULL pointer dereference) via an empty ZIP archive that is processed with a (1) locateName or (2) statName operation..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2012-2688",
            "description":
                " Unspecified vulnerability in the _php_stream_scandir function in the stream implementation in PHP before 5.3.15 and 5.4.x before 5.4.5 has unknown impact and remote attack vectors, related to an \"overflow.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2012-2687",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the make_variant_list function in mod_negotiation.c in the mod_negotiation module in the Apache HTTP Server 2.4.x before 2.4.3, when the MultiViews option is enabled, allow remote attackers to inject arbitrary web script or HTML via a crafted filename that is not properly handled during construction of a variant list..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-1466",
            "description":
                " Integer overflow in the SdnToJulian function in the Calendar extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via a large integer in the first argument to the cal_from_jd function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-7679",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_mime can read one byte past the end of a buffer when sending a malicious Content-Type response header..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1464",
            "description":
                " Buffer overflow in the strval function in PHP before 5.3.6, when the precision configuration option has a large value, might allow context-dependent attackers to cause a denial of service (application crash) via a small numerical value in the argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3182",
            "description":
                " Per: http://cwe.mitre.org/data/definitions/476.html \r\n'CWE-476: NULL Pointer Dereference'..  PHP before 5.3.7 does not properly check the return values of the malloc, calloc, and realloc library functions, which allows context-dependent attackers to cause a denial of service (NULL pointer dereference and application crash) or trigger a buffer overflow by leveraging the ability to provide an arbitrary value for a function argument, related to (1) ext/curl/interface.c, (2) ext/date/lib/parse_date.c, (3) ext/date/lib/parse_iso_intervals.c, (4) ext/date/lib/parse_tz.c, (5) ext/date/lib/timelib.c, (6) ext/pdo_odbc/pdo_odbc.c, (7) ext/reflection/php_reflection.c, (8) ext/soap/php_sdl.c, (9) ext/xmlrpc/libxmlrpc/base64.c, (10) TSRM/tsrm_win32.c, and (11) the strtotime function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4148",
            "description":
                " The do_soap_call function in ext/soap/soap.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 does not verify that the uri property is a string, which allows remote attackers to obtain sensitive information by providing crafted serialized data with an int data type, related to a \"type confusion\" issue..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5773",
            "description":
                " php_zip.c in the zip extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to execute arbitrary code or cause a denial of service (use-after-free and application crash) via crafted serialized data containing a ZipArchive object..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2022-31813",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may not send the X-Forwarded-* headers to the origin server based on client side Connection header hop-by-hop mechanism. This may be used to bypass IP based authentication on the origin server/application..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5771",
            "description":
                " spl_array.c in the SPL extension in PHP before 5.5.37 and 5.6.x before 5.6.23 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to execute arbitrary code or cause a denial of service (use-after-free and application crash) via crafted serialized data..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5770",
            "description":
                " Integer overflow in the SplFileObject::fread function in spl_directory.c in the SPL extension in PHP before 5.5.37 and 5.6.x before 5.6.23 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large integer argument, a related issue to CVE-2016-5096..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2015-8935",
            "description":
                " The sapi_header_op function in main/SAPI.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 supports deprecated line folding without considering browser compatibility, which allows remote attackers to conduct cross-site scripting (XSS) attacks against Internet Explorer by leveraging (1) %0A%20 or (2) %0D%0A%20 mishandling in the header function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-20783",
            "description":
                " In PHP before 5.6.39, 7.x before 7.0.33, 7.1.x before 7.1.25, and 7.2.x before 7.2.13, a buffer over-read in PHAR reading functions may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse a .phar file. This is related to phar_parse_pharfile in ext/phar/phar.c..",
            "vendors": ["opensuse", "php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4147",
            "description":
                " The SoapClient::__call method in ext/soap/soap.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 does not verify that __default_headers is an array, which allows remote attackers to execute arbitrary code by providing crafted serialized data with an unexpected data type, related to a \"type confusion\" issue..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.4,
            "cveNo": "CVE-2012-0057",
            "description":
                " PHP before 5.3.9 has improper libxslt security settings, which allows remote attackers to create arbitrary files via a crafted XSLT stylesheet that uses the libxslt output extension..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-3167",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, use of the ap_get_basic_auth_pw() by third-party modules outside of the authentication phase may lead to authentication requirements being bypassed..",
            "vendors": [
              "apple",
              "apache",
              "oracle",
              "debian",
              "redhat",
              "netapp"
            ],
            "products": [
              "http server",
              "oncommand unified manager",
              "storagegrid",
              "secure global desktop",
              "jboss core services",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-0053",
            "description":
                " protocol.c in the Apache HTTP Server 2.2.x through 2.2.21 does not properly restrict header information during construction of Bad Request (aka 400) error documents, which allows remote attackers to obtain the values of HTTPOnly cookies via vectors involving a (1) long or (2) malformed header in conjunction with crafted web script..",
            "vendors": ["apache", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "storage"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.9,
            "cveNo": "CVE-2012-0883",
            "description":
                " envvars (aka envvars-std) in the Apache HTTP Server before 2.4.2 places a zero-length directory name in the LD_LIBRARY_PATH, which allows local users to gain privileges via a Trojan horse DSO in the current working directory during execution of apachectl..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-3169",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_ssl may dereference a NULL pointer when third-party modules call ap_hook_process_connection() during an HTTP request to an HTTPS port..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-4070",
            "description":
                " ** DISPUTED ** Integer overflow in the php_raw_url_encode function in ext/standard/url.c in PHP before 5.5.34, 5.6.x before 5.6.20, and 7.x before 7.0.5 allows remote attackers to cause a denial of service (application crash) via a long string to the rawurlencode function. NOTE: the vendor says \"Not sure if this qualifies as security issue (probably not).\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4024",
            "description":
                " Algorithmic complexity vulnerability in the multipart_buffer_headers function in main/rfc1867.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 allows remote attackers to cause a denial of service (CPU consumption) via crafted form data that triggers an improper order-of-growth outcome..",
            "vendors": ["apple", "oracle", "hp", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "linux",
              "php",
              "system_management_homepage",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2021-44790",
            "description":
                " A carefully crafted request body can cause a buffer overflow in the mod_lua multipart parser (r:parsebody() called from Lua scripts). The Apache httpd team is not aware of an exploit for the vulnerabilty though it might be possible to craft one. This issue affects Apache HTTP Server 2.4.51 and earlier..",
            "vendors": ["tenable", "apache", "oracle", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "communications operations monitor",
              "cloud backup",
              "instantis enterprisetrack",
              "tenable sc",
              "communications session route manager",
              "communications element manager",
              "communications session report manager"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.5,
            "cveNo": "CVE-2018-14851",
            "description":
                " exif_process_IFD_in_MAKERNOTE in ext/exif/exif.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8 allows remote attackers to cause a denial of service (out-of-bounds read and application crash) via a crafted JPEG file..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-3639",
            "description":
                " The mod_proxy module in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x before 2.2.18, when the Revision 1179239 patch is in place, does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers by using the HTTP/0.9 protocol with a malformed URI containing an initial @ (at sign) character.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2011-3368..",
            "vendors": ["apache"],
            "products": [
              "http_server2.0a1",
              "http_server2.0a2",
              "http_server2.0a5",
              "http_server2.0a6",
              "http_server2.0a3",
              "http_server2.0a4",
              "http_server2.0a9",
              "http_server2.0a7",
              "http_server2.0a8",
              "http_server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2013-1635",
            "description":
                " ext/soap/soap.c in PHP before 5.3.22 and 5.4.x before 5.4.13 does not validate the relationship between the soap.wsdl_cache_dir directive and the open_basedir directive, which allows remote attackers to bypass intended access restrictions by triggering the creation of cached SOAP WSDL files in an arbitrary directory..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0231",
            "description":
                " The mod_cgid module in the Apache HTTP Server before 2.4.10 does not have a timeout mechanism, which allows remote attackers to cause a denial of service (process hang) via a request to a CGI script that does not read from its stdin file descriptor..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2016-4975",
            "description":
                " Possible CRLF injection allowing HTTP response splitting attacks for sites which use mod_userdir. This issue was mitigated by changes made in 2.4.25 and 2.2.32 which prohibit CR or LF injection into the \"Location\" or other outbound header key or value. Fixed in Apache HTTP Server 2.4.25 (Affected 2.4.1-2.4.23). Fixed in Apache HTTP Server 2.2.32 (Affected 2.2.0-2.2.31)..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-1824",
            "description":
                " The SOAP parser in PHP before 5.3.22 and 5.4.x before 5.4.12 allows remote attackers to read arbitrary files via a SOAP WSDL file containing an XML external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue in the soap_xmlParseFile and soap_xmlParseMemory functions..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2012-0031",
            "description":
                " scoreboard.c in the Apache HTTP Server 2.2.21 and earlier might allow local users to cause a denial of service (daemon crash during shutdown) or possibly have unspecified other impact by modifying a certain type field within a scoreboard shared memory segment, leading to an invalid call to the free function..",
            "vendors": ["apache", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "storage"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2013-6501",
            "description":
                " The default soap.wsdl_cache_dir setting in (1) php.ini-production and (2) php.ini-development in PHP through 5.6.7 specifies the /tmp directory, which makes it easier for local users to conduct WSDL injection attacks by creating a file under /tmp with a predictable filename that is used by the get_sdl function in ext/soap/php_sdl.c..",
            "vendors": ["suse", "php"],
            "products": ["linux_enterprise_server", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-8865",
            "description":
                " The file_check_mem function in funcs.c in file before 5.23, as used in the Fileinfo component in PHP before 5.5.34, 5.6.x before 5.6.20, and 7.x before 7.0.5, mishandles continuation-level jumps, which allows context-dependent attackers to cause a denial of service (buffer overflow and application crash) or possibly execute arbitrary code via a crafted magic file..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2013-6420",
            "description":
                " The asn1_time_to_time_t function in ext/openssl/openssl.c in PHP before 5.3.28, 5.4.x before 5.4.23, and 5.5.x before 5.5.7 does not properly parse (1) notBefore and (2) notAfter timestamps in X.509 certificates, which allows remote attackers to execute arbitrary code or cause a denial of service (memory corruption) via a crafted certificate that is not properly handled by the openssl_x509_parse function..",
            "vendors": ["apple", "opensuse", "php"],
            "products": ["mac_os_x", "opensuse", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3487",
            "description":
                " The cdf_read_property_info function in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, does not properly validate a stream offset, which allows remote attackers to cause a denial of service (application crash) via a crafted CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-22719",
            "description":
                " A carefully crafted request body can cause a read to a random memory area which could cause the process to crash. This issue affects Apache HTTP Server 2.4.52 and earlier..",
            "vendors": ["apache", "oracle"],
            "products": ["zfs storage appliance kit", "http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-6174",
            "description":
                " applications/core/modules/front/system/content.php in Invision Power Services IPS Community Suite (aka Invision Power Board, IPB, or Power Board) before 4.1.13, when used with PHP before 5.4.24 or 5.5.x before 5.5.8, allows remote attackers to execute arbitrary code via the content_class parameter..",
            "vendors": ["invisioncommunity", "php"],
            "products": ["invision_power_board", "php"],
            "exploits": [
              "WebApps : PHP : IPS Community Suite 4.1.12.3 - PHP Code Injection"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9138",
            "description":
                " PHP through 5.6.27 and 7.x through 7.0.12 mishandles property modification during __wakeup processing, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data, as demonstrated by Exception::__toString with DateInterval::__wakeup..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.5,
            "cveNo": "CVE-2022-31628",
            "description":
                " In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the phar uncompressor code would recursively uncompress \"quines\" gzip files, resulting in an infinite loop..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2022-31629",
            "description":
                " In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the vulnerability enables network and same-site attackers to set a standard insecure cookie in the victim's browser which is treated as a `__Host-` or `__Secure-` cookie by PHP applications..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5768",
            "description":
                " Double free vulnerability in the _php_mb_regex_ereg_replace_exec function in php_mbregex.c in the mbstring extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allows remote attackers to execute arbitrary code or cause a denial of service (application crash) by leveraging a callback exception..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.8,
            "cveNo": "CVE-2015-2783",
            "description":
                " ext/phar/phar.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (buffer over-read and application crash) via a crafted length value in conjunction with crafted serialized data in a phar archive, related to the phar_parse_metadata and phar_parse_pharfile functions..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9137",
            "description":
                " Use-after-free vulnerability in the CURLFile implementation in ext/curl/curl_file.c in PHP before 5.6.27 and 7.x before 7.0.12 allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data that is mishandled during __wakeup processing..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-2020",
            "description":
                " ext/gd/gd.c in PHP 5.5.x before 5.5.9 does not check data types, which might allow remote attackers to obtain sensitive information by using a (1) string or (2) array data type in place of a numeric data type, as demonstrated by an imagecrop function call with a string for the x dimension value, a different vulnerability than CVE-2013-7226..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2011-1939",
            "description":
                " SQL injection vulnerability in Zend Framework 1.10.x before 1.10.9 and 1.11.x before 1.11.6 when using non-ASCII-compatible encodings in conjunction PDO_MySql in PHP before 5.3.6..",
            "vendors": ["debian", "zend", "php"],
            "products": ["debian_linux", "php", "zend_framework"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-2787",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages use of the unset function within an __wakeup function, a related issue to CVE-2015-0231..",
            "vendors": ["apple", "opensuse", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "opensuse",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2021-34798",
            "description":
                " Malformed requests may cause the server to dereference a NULL pointer. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["tenable", "apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "ruggedcom nms",
              "communications cloud native core network function cloud native environment",
              "http server",
              "cloud backup",
              "peoplesoft enterprise peopletools",
              "sinec nms",
              "clustered data ontap",
              "storagegrid",
              "sinema server",
              "instantis enterprisetrack",
              "tenable sc",
              "enterprise manager base platform",
              "sinema remote connect server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6831",
            "description":
                " Multiple use-after-free vulnerabilities in SPL in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allow remote attackers to execute arbitrary code via vectors involving (1) ArrayObject, (2) SplObjectStorage, and (3) SplDoublyLinkedList, which are mishandled during unserialization..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6832",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the SPL unserialize implementation in ext/spl/spl_array.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to execute arbitrary code via crafted serialized data that triggers misuse of an array field..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6833",
            "description":
                " Directory traversal vulnerability in the PharData class in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to write to arbitrary files via a .. (dot dot) in a ZIP archive entry that is mishandled during an extractTo call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-6834",
            "description":
                " Multiple use-after-free vulnerabilities in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 allow remote attackers to execute arbitrary code via vectors related to (1) the Serializable interface, (2) the SplObjectStorage class, and (3) the SplDoublyLinkedList class, which are mishandled during unserialization...  <a href=\"http://cwe.mitre.org/data/definitions/502.html\">CWE-502: Deserialization of Untrusted Data</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-6835",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  The session deserializer in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 mishandles multiple php_var_unserialize calls, which allow remote attackers to execute arbitrary code or cause a denial of service (use-after-free) via crafted session content..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-4885",
            "description":
                " PHP before 5.3.9 computes hash values for form parameters without restricting the ability to trigger hash collisions predictably, which allows remote attackers to cause a denial of service (CPU consumption) by sending many crafted parameters..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 18305 PHP Hash Table Collision - Denial of Service (PoC)"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6837",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The xsl_ext_function_php function in ext/xsl/xsltprocessor.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13, when libxml2 before 2.9.2 is used, does not consider the possibility of a NULL valuePop return value before proceeding with a free operation during initial error checking, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted XML document, a different vulnerability than CVE-2015-6838..",
            "vendors": ["xmlsoft", "php"],
            "products": ["php", "libxml2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6838",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The xsl_ext_function_php function in ext/xsl/xsltprocessor.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13, when libxml2 before 2.9.2 is used, does not consider the possibility of a NULL valuePop return value before proceeding with a free operation after the principal argument loop, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted XML document, a different vulnerability than CVE-2015-6837..",
            "vendors": ["xmlsoft", "php"],
            "products": ["php", "libxml2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-3348",
            "description":
                " The mod_proxy_ajp module in the Apache HTTP Server before 2.2.21, when used with mod_proxy_balancer in certain configurations, allows remote attackers to cause a denial of service (temporary \"error state\" in the backend server) via a malformed HTTP request..",
            "vendors": ["apache", "redhat"],
            "products": ["jboss enterprise web server", "http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9935",
            "description":
                " The php_wddx_push_element function in ext/wddx/wddx.c in PHP before 5.6.29 and 7.x before 7.0.14 allows remote attackers to cause a denial of service (out-of-bounds read and memory corruption) or possibly have unspecified other impact via an empty boolean element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-19396",
            "description":
                " ext/standard/var_unserializer.c in PHP 5.x through 7.1.24 allows attackers to cause a denial of service (application crash) via an unserialize call for the com, dotnet, or variant class..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11143",
            "description":
                " In PHP before 5.6.31, an invalid free in the WDDX deserialization of boolean parameters could be used by attackers able to inject XML for deserialization to crash the PHP interpreter, related to an invalid free for an empty boolean element in ext/wddx/wddx.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2017-7890",
            "description":
                " The GIF decoding function gdImageCreateFromGifCtx in gd_gif_in.c in the GD Graphics Library (aka libgd), as used in PHP before 5.6.31 and 7.x before 7.1.7, does not zero colorMap arrays before use. A specially crafted GIF image could use the uninitialized tables to read ~700 bytes from the top of the stack, potentially disclosing sensitive information..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11145",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, an error in the date extension's timelib_meridian parsing code could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: the correct fix is in the e8b7698f5ee757ce2c8bd10a192a491a498f891c commit, not the bd77ac90d3bdf31ce2a5251ad92e9e75 gist..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11144",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, the openssl extension PEM sealing code did not check the return value of the OpenSSL sealing function, which could lead to a crash of the PHP interpreter, related to an interpretation conflict for a negative number in ext/openssl/openssl.c, and an OpenSSL documentation omission..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-2143",
            "description":
                " As per: http://git.php.net/?p=php-src.git;a=commitdiff;h=aab49e934de1fff046e659cbec46e3d053b41c34 and http://git.php.net/?p=php-src.git;a=commitdiff_plain;h=aab49e934de1fff046e659cbec46e3d053b41c34\r\n\r\nPHP 5.3.13 and earlier are vulnerable.\r\n..  The crypt_des (aka DES-based crypt) function in FreeBSD before 9.0-RELEASE-p2, as used in PHP, PostgreSQL, and other products, does not process the complete cleartext password if this password contains a 0x80 character, which makes it easier for context-dependent attackers to obtain access via an authentication attempt with an initial substring of the intended password, as demonstrated by a Unicode password..",
            "vendors": ["postgresql", "freebsd", "php"],
            "products": ["postgresql", "freebsd", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-1171",
            "description":
                " The libxml RSHUTDOWN function in PHP 5.x allows remote attackers to bypass the open_basedir protection mechanism and read arbitrary files via vectors involving a stream_close method call during use of a custom stream wrapper..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-0207",
            "description":
                " The cdf_read_short_sector function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, allows remote attackers to cause a denial of service (assertion failure and application exit) via a crafted CDF file..",
            "vendors": ["christos zoulas", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2012-0831",
            "description":
                " PHP before 5.3.10 does not properly perform a temporary change to the magic_quotes_gpc directive during the importing of environment variables, which makes it easier for remote attackers to conduct SQL injection attacks via a crafted request, related to main/php_variables.c, sapi/cgi/cgi_main.c, and sapi/fpm/fpm/fpm_main.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2018-17082",
            "description":
                " The Apache2 component in PHP before 5.6.38, 7.0.x before 7.0.32, 7.1.x before 7.1.22, and 7.2.x before 7.2.10 allows XSS via the body of a \"Transfer-Encoding: chunked\" request, because the bucket brigade is mishandled in the php_handler function in sapi/apache2handler/sapi_apache2.c..",
            "vendors": ["debian", "php", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-5704",
            "description":
                " The mod_headers module in the Apache HTTP Server 2.2.22 allows remote attackers to bypass \"RequestHeader unset\" directives by placing a header in the trailer portion of data sent with chunked transfer coding.  NOTE: the vendor states \"this is not a security issue in httpd as such.\".",
            "vendors": ["apple", "apache", "oracle", "canonical", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9639",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the data_len variable..",
            "vendors": [
              "debian",
              "opensuse",
              "php",
              "canonical",
              "redhat",
              "netapp"
            ],
            "products": [
              "storage automation store",
              "php",
              "software collections"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9638",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the maker_note->offset relationship to value_len..",
            "vendors": [
              "debian",
              "opensuse",
              "php",
              "canonical",
              "redhat",
              "netapp"
            ],
            "products": [
              "storage automation store",
              "php",
              "software collections"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-4409",
            "description":
                " Integer overflow in the NumberFormatter::getSymbol (aka numfmt_get_symbol) function in PHP 5.3.3 and earlier allows context-dependent attackers to cause a denial of service (application crash) via an invalid argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-6438",
            "description":
                " The dav_xml_get_cdata function in main/util.c in the mod_dav module in the Apache HTTP Server before 2.4.8 does not properly remove whitespace characters from CDATA sections, which allows remote attackers to cause a denial of service (daemon crash) via a crafted DAV WRITE request..",
            "vendors": ["apache", "oracle"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2016-1903",
            "description":
                " The gdImageRotateInterpolated function in ext/gd/libgd/gd_interpolation.c in PHP before 5.5.31, 5.6.x before 5.6.17, and 7.x before 7.0.2 allows remote attackers to obtain sensitive information or cause a denial of service (out-of-bounds read and application crash) via a large bgd_color argument to the imagerotate function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2013-7327",
            "description":
                " The gdImageCrop function in ext/gd/gd.c in PHP 5.5.x before 5.5.9 does not check return values, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via invalid imagecrop arguments that lead to use of a NULL pointer as a return value, a different vulnerability than CVE-2013-7226..",
            "vendors": ["php", "canonical"],
            "products": ["php", "ubuntu_linux"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-0273",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Multiple use-after-free vulnerabilities in ext/date/php_date.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 allow remote attackers to execute arbitrary code via crafted serialized input containing a (1) R or (2) r type specifier in (a) DateTimeZone data handled by the php_date_timezone_initialize_from_hash function or (b) DateTime data handled by the php_date_initialize_from_hash function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9637",
            "description":
                " An issue was discovered in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. Due to the way rename() across filesystems is implemented, it is possible that file being renamed is briefly available with wrong permissions while the rename is ongoing, thus enabling unauthorized users to access the data..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-4558",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the balancer_handler function in the manager interface in mod_proxy_balancer.c in the mod_proxy_balancer module in the Apache HTTP Server 2.2.x before 2.2.24-dev and 2.4.x before 2.4.4 allow remote attackers to inject arbitrary web script or HTML via a crafted string..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4602",
            "description":
                " The __PHP_Incomplete_Class function in ext/standard/incomplete_class.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 1.2,
            "cveNo": "CVE-2011-4415",
            "description":
                " The ap_pregsub function in server/util.c in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x through 2.2.21, when the mod_setenvif module is enabled, does not restrict the size of values of environment variables, which allows local users to cause a denial of service (memory consumption or NULL pointer dereference) via a .htaccess file with a crafted SetEnvIf directive, in conjunction with a crafted HTTP request header, related to (1) the \"len +=\" statement and (2) the apr_pcalloc function call, a different vulnerability than CVE-2011-3607..",
            "vendors": ["apache"],
            "products": ["http_server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4601",
            "description":
                " PHP before 5.6.7 might allow remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to \"type confusion\" issues in (1) ext/soap/php_encoding.c, (2) ext/soap/php_http.c, and (3) ext/soap/soap.c, a different issue than CVE-2015-4600...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4600",
            "description":
                " The SoapClient implementation in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to \"type confusion\" issues in the (1) SoapClient::__getLastRequest, (2) SoapClient::__getLastResponse, (3) SoapClient::__getLastRequestHeaders, (4) SoapClient::__getLastResponseHeaders, (5) SoapClient::__getCookies, and (6) SoapClient::__setCookie methods...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4603",
            "description":
                " The exception::getTraceAsString function in Zend/zend_exceptions.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-14883",
            "description":
                " An issue was discovered in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. An Integer Overflow leads to a heap-based buffer over-read in exif_thumbnail_extract of exif.c..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4605",
            "description":
                " The mcopy function in softmagic.c in file 5.x, as used in the Fileinfo component in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, does not properly restrict a certain offset value, which allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted string that is mishandled by a \"Python script text executable\" rule..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1153",
            "description":
                " Multiple format string vulnerabilities in phar_object.c in the phar extension in PHP 5.3.5 and earlier allow context-dependent attackers to obtain sensitive information from process memory, cause a denial of service (memory corruption), or possibly execute arbitrary code via format string specifiers in an argument to a class method, leading to an incorrect zend_throw_exception_ex call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-1452",
            "description":
                " The (1) mod_cache and (2) mod_dav modules in the Apache HTTP Server 2.2.x before 2.2.16 allow remote attackers to cause a denial of service (process crash) via a request that lacks a path..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4604",
            "description":
                " The mget function in softmagic.c in file 5.x, as used in the Fileinfo component in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, does not properly maintain a certain pointer relationship, which allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted string that is mishandled by a \"Python script text executable\" rule..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.4,
            "cveNo": "CVE-2011-3607",
            "description":
                " Integer overflow in the ap_pregsub function in server/util.c in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x through 2.2.21, when the mod_setenvif module is enabled, allows local users to gain privileges via a .htaccess file with a crafted SetEnvIf directive, in conjunction with a crafted HTTP request header, leading to a heap-based buffer overflow..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-3597",
            "description":
                " Multiple buffer overflows in the php_parserr function in ext/standard/dns.c in PHP before 5.4.32 and 5.5.x before 5.5.16 allow remote DNS servers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted DNS record, related to the dns_get_record function and the dn_expand function.  NOTE: this issue exists because of an incomplete fix for CVE-2014-4049..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2012-3450",
            "description":
                " pdo_sql_parser.re in the PDO extension in PHP before 5.3.14 and 5.4.x before 5.4.4 does not properly determine the end of the query string during parsing of prepared statements, which allows remote attackers to cause a denial of service (out-of-bounds read and application crash) via a crafted parameter value..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2016-5114",
            "description":
                " sapi/fpm/fpm/fpm_log.c in PHP before 5.5.31, 5.6.x before 5.6.17, and 7.x before 7.0.2 misinterprets the semantics of the snprintf return value, which allows attackers to obtain sensitive information from process memory or cause a denial of service (out-of-bounds read and buffer overflow) via a long string, as demonstrated by a long URI in a configuration with custom REQUEST_URI logging..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2014-4670",
            "description":
                " Use-after-free vulnerability in ext/spl/spl_dllist.c in the SPL component in PHP through 5.5.14 allows context-dependent attackers to cause a denial of service or possibly have unspecified other impact via crafted iterator usage within applications in certain web-hosting environments...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\" target=\"_blank\">CWE-416: Use After Free</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-1467",
            "description":
                " Unspecified vulnerability in the NumberFormatter::setSymbol (aka numfmt_set_symbol) function in the Intl extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via an invalid argument, a related issue to CVE-2010-4409..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1092",
            "description":
                " Integer overflow in ext/shmop/shmop.c in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (crash) and possibly read sensitive memory via a large third argument to the shmop_read function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : Linux : 16966 PHP 5.3.6 - &#039;shmop_read()&#039; Integer Overflow Denial of Service"
            ]
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0237",
            "description":
                " The cdf_unpack_summary_info function in cdf.c in the Fileinfo component in PHP before 5.4.29 and 5.5.x before 5.5.13 allows remote attackers to cause a denial of service (performance degradation) by triggering many file_printf calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-0236",
            "description":
                " file before 5.18, as used in the Fileinfo component in PHP before 5.6.0, allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a zero root_storage value in a CDF file, related to cdf.c and readcdf.c...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-9652",
            "description":
                " The mconvert function in softmagic.c in file before 5.21, as used in the Fileinfo component in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5, does not properly handle a certain string-length field during a copy of a truncated version of a Pascal string, which might allow remote attackers to cause a denial of service (out-of-bounds memory access and application crash) via a crafted file..",
            "vendors": ["file_project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0419",
            "description":
                " Stack consumption vulnerability in the fnmatch implementation in apr_fnmatch.c in the Apache Portable Runtime (APR) library before 1.4.3 and the Apache HTTP Server before 2.2.18, and in fnmatch.c in libc in NetBSD 5.1, OpenBSD 4.8, FreeBSD, Apple Mac OS X 10.6, Oracle Solaris 10, and Android, allows context-dependent attackers to cause a denial of service (CPU and memory consumption) via *? sequences in the first argument, as demonstrated by attacks against mod_autoindex in httpd..",
            "vendors": ["apache"],
            "products": ["http server", "portable runtime"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5094",
            "description":
                " Integer overflow in the php_html_entities function in ext/standard/html.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact by triggering a large output string from the htmlspecialchars function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-8142",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.36, 5.5.x before 5.5.20, and 5.6.x before 5.6.4 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages improper handling of duplicate keys within the serialized properties of an object, a different vulnerability than CVE-2004-1019..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4543",
            "description":
                " The exif_process_IFD_in_JPEG function in ext/exif/exif.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 does not validate IFD sizes, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via crafted header data..",
            "vendors": ["fedoraproject", "opensuse", "hp", "php"],
            "products": ["fedora", "system_management_homepage", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4542",
            "description":
                " The exif_process_IFD_TAG function in ext/exif/exif.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 does not properly construct spprintf arguments, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via crafted header data..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4541",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/125.html\">CWE-125: Out-of-bounds Read</a>..  The grapheme_strpos function in ext/intl/grapheme/grapheme_string.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a negative offset..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4540",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/125.html\">CWE-125: Out-of-bounds Read</a>..  The grapheme_stripos function in ext/intl/grapheme/grapheme_string.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a negative offset..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-7963",
            "description":
                " ** DISPUTED ** The GNU Multiple Precision Arithmetic Library (GMP) interfaces for PHP through 7.1.4 allow attackers to cause a denial of service (memory consumption and application crash) via operations on long strings. NOTE: the vendor disputes this, stating \"There is no security issue here, because GMP safely aborts in case of an OOM condition. The only attack vector here is denial of service. However, if you allow attacker-controlled, unbounded allocations you have a DoS vector regardless of GMP's OOM behavior.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-3515",
            "description":
                " The SPL component in PHP before 5.4.30 and 5.5.x before 5.5.14 incorrectly anticipates that certain data structures will have the array data type after unserialization, which allows remote attackers to execute arbitrary code via a crafted string that triggers use of a Hashtable destructor, related to \"type confusion\" issues in (1) ArrayObject and (2) SPLObjectStorage..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0238",
            "description":
                " The cdf_read_property_info function in cdf.c in the Fileinfo component in PHP before 5.4.29 and 5.5.x before 5.5.13 allows remote attackers to cause a denial of service (infinite loop or out-of-bounds memory access) via a vector that (1) has zero length or (2) is too long..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2016-5399",
            "description":
                " The bzread function in ext/bz2/bz2.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (out-of-bounds write) or execute arbitrary code via a crafted bz2 archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 40155 PHP 5.5.37/5.6.23/7.0.8 - &#039;bzread()&#039; Out-of-Bounds Write"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9023",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A number of heap-based buffer over-read instances are present in mbstring regular expression functions when supplied with invalid multibyte data. These occur in ext/mbstring/oniguruma/regcomp.c, ext/mbstring/oniguruma/regexec.c, ext/mbstring/oniguruma/regparse.c, ext/mbstring/oniguruma/enc/unicode.c, and ext/mbstring/oniguruma/src/utf32_be.c when a multibyte regular expression pattern contains invalid multibyte sequences..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9020",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. Invalid input to the function xmlrpc_decode() can lead to an invalid memory access (heap out of bounds read or read after free). This is related to xml_elem_parse_buf in ext/xmlrpc/libxmlrpc/xml_element.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9021",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A heap-based buffer over-read in PHAR reading functions in the PHAR extension may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse the file name, a different vulnerability than CVE-2018-20783. This is related to phar_detect_phar_fname_ext in ext/phar/phar.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9024",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. xmlrpc_decode() can allow a hostile XMLRPC server to cause PHP to read memory outside of allocated areas in base64_decode_xmlrpc in ext/xmlrpc/libxmlrpc/base64.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-1643",
            "description":
                " The SOAP parser in PHP before 5.3.23 and 5.4.x before 5.4.13 allows remote attackers to read arbitrary files via a SOAP WSDL file containing an XML external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue in the soap_xmlParseFile and soap_xmlParseMemory functions.  NOTE: this vulnerability exists because of an incorrect fix for CVE-2013-1824..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-2497",
            "description":
                " The gdImageCreateFromXpm function in gdxpm.c in libgd, as used in PHP 5.4.26 and earlier, allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted color table in an XPM file..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2011-3192",
            "description":
                " The byterange filter in the Apache HTTP Server 1.3.x, 2.0.x through 2.0.64, and 2.2.x through 2.2.19 allows remote attackers to cause a denial of service (memory and CPU consumption) via a Range header that expresses multiple overlapping ranges, as exploited in the wild in August 2011, a different vulnerability than CVE-2007-0086..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2021-39275",
            "description":
                " ap_escape_quotes() may write beyond the end of a buffer when given malicious input. No included modules pass untrusted data to these functions, but third-party / external modules may. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "storagegrid",
              "sinema server",
              "cloud backup",
              "instantis enterprisetrack",
              "sinec nms",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6291",
            "description":
                " The exif_process_IFD_in_MAKERNOTE function in ext/exif/exif.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (out-of-bounds array access and memory corruption), obtain sensitive information from process memory, or possibly have unspecified other impact via a crafted JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6290",
            "description":
                " ext/session/session.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 does not properly maintain a certain hash data structure, which allows remote attackers to cause a denial of service (use-after-free) or possibly have unspecified other impact via vectors related to session deserialization..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2016-6292",
            "description":
                " The exif_process_user_comment function in ext/exif/exif.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6295",
            "description":
                " ext/snmp/snmp.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to cause a denial of service (use-after-free and application crash) or possibly have unspecified other impact via crafted serialized data, a related issue to CVE-2016-5773..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6294",
            "description":
                " The locale_accept_from_http function in ext/intl/locale/locale_methods.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 does not properly restrict calls to the ICU uloc_acceptLanguageFromHTTP function, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a call with a long argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-6297",
            "description":
                " Integer overflow in the php_stream_zip_opener function in ext/zip/zip_stream.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (stack-based buffer overflow) or possibly have unspecified other impact via a crafted zip:// URL..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6296",
            "description":
                " Integer signedness error in the simplestring_addn function in simplestring.c in xmlrpc-epi through 0.54.2, as used in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9, allows remote attackers to cause a denial of service (heap-based buffer overflow) or possibly have unspecified other impact via a long first argument to the PHP xmlrpc_encode_request function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3587",
            "description":
                " Integer overflow in the cdf_read_property_info function in cdf.c in file through 5.19, as used in the Fileinfo component in PHP before 5.4.32 and 5.5.x before 5.5.16, allows remote attackers to cause a denial of service (application crash) via a crafted CDF file.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1571..",
            "vendors": ["php", "christos_zoulas"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-1351",
            "description":
                " Use-after-free vulnerability in the _zend_shared_memdup function in zend_shared_alloc.c in the OPcache extension in PHP through 5.6.7 allows remote attackers to cause a denial of service or possibly have unspecified other impact via unknown vectors..",
            "vendors": ["oracle", "php"],
            "products": ["secure backup", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-1352",
            "description":
                " The build_tablename function in pgsql.c in the PostgreSQL (aka pgsql) extension in PHP through 5.6.7 does not validate token extraction for table names, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted name...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\" rel=\"nofollow\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2009-4418",
            "description":
                " The unserialize function in PHP 5.3.0 and earlier allows context-dependent attackers to cause a denial of service (resource consumption) via a deeply nested serialized variable, as demonstrated by a string beginning with a:1: followed by many {a:1: sequences..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4116",
            "description":
                " Use-after-free vulnerability in the spl_ptr_heap_insert function in ext/spl/spl_heap.c in PHP before 5.5.27 and 5.6.x before 5.6.11 allows remote attackers to execute arbitrary code by triggering a failed SplMinHeap::compare operation...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE 416: Use After Free</a>.",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1398",
            "description":
                " The sapi_header_op function in main/SAPI.c in PHP before 5.3.11 and 5.4.x before 5.4.0RC2 does not check for %0D sequences (aka carriage return characters), which allows remote attackers to bypass an HTTP response-splitting protection mechanism via a crafted URL, related to improper interaction between the PHP header function and certain browsers, as demonstrated by Internet Explorer and Google Chrome..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9705",
            "description":
                " Heap-based buffer overflow in the enchant_broker_request_dict function in ext/enchant/enchant.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 allows remote attackers to execute arbitrary code via vectors that trigger creation of multiple dictionaries..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.1,
            "cveNo": "CVE-2016-3185",
            "description":
                " The make_http_soap_request function in ext/soap/php_http.c in PHP before 5.4.44, 5.5.x before 5.5.28, 5.6.x before 5.6.12, and 7.x before 7.0.4 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (type confusion and application crash) via crafted serialized _cookies data, related to the SoapClient::__call method in ext/soap/soap.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3368",
            "description":
                " The mod_proxy module in the Apache HTTP Server 1.3.x through 1.3.42, 2.0.x through 2.0.64, and 2.2.x through 2.2.21 does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers via a malformed URI containing an initial @ (at sign) character..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": [
              "remote : Multiple : 17969 Apache mod_proxy - Reverse Proxy Exposure"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-5589",
            "description":
                " The phar_convert_to_other function in ext/phar/phar_object.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 does not validate a file pointer before a close operation, which allows remote attackers to cause a denial of service (segmentation fault) or possibly have unspecified other impact via a crafted TAR archive that is mishandled in a Phar::convertToData call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1148",
            "description":
                " Use-after-free vulnerability in the substr_replace function in PHP 5.3.6 and earlier allows context-dependent attackers to cause a denial of service (memory corruption) or possibly have unspecified other impact by using the same variable for multiple arguments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2018-7584",
            "description":
                " In PHP through 5.6.33, 7.0.x before 7.0.28, 7.1.x through 7.1.14, and 7.2.x through 7.2.2, there is a stack-based buffer under-read while parsing an HTTP response in the php_stream_url_wrap_http_ex function in ext/standard/http_fopen_wrapper.c. This subsequently results in copying a large string..",
            "vendors": ["debian", "php", "canonical"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 44846 PHP 7.2.2 - &#039;php_stream_url_wrap_http_ex&#039; Buffer Overflow"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10397",
            "description":
                " In PHP before 5.6.28 and 7.x before 7.0.13, incorrect handling of various URI components in the URL parser could be used by attackers to bypass hostname-specific URL checks, as demonstrated by evil.example.com:80#@good.example.com/ and evil.example.com:80?@good.example.com/ inputs to the parse_url function (implemented in the php_url_parse_ex function in ext/standard/url.c)..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2011-4718",
            "description":
                " Session fixation vulnerability in the Sessions subsystem in PHP before 5.5.2 allows remote attackers to hijack web sessions by specifying a session ID..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-3669",
            "description":
                " Integer overflow in the object_custom function in ext/standard/var_unserializer.c in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an argument to the unserialize function that triggers calculation of a large length value..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-3668",
            "description":
                " Buffer overflow in the date_from_ISO8601 function in the mkgmtime implementation in libxmlrpc/xmlrpc.c in the XMLRPC extension in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 allows remote attackers to cause a denial of service (application crash) via (1) a crafted first argument to the xmlrpc_set_type function or (2) a crafted argument to the xmlrpc_decode function, related to an out-of-bounds read operation..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-0226",
            "description":
                " Race condition in the mod_status module in the Apache HTTP Server before 2.4.10 allows remote attackers to cause a denial of service (heap-based buffer overflow), or possibly obtain sensitive credential information or execute arbitrary code, via a crafted request that triggers improper scoreboard handling within the status_handler function in modules/generators/mod_status.c and the lua_ap_scoreboard_worker function in modules/lua/lua_request.c..",
            "vendors": ["apache", "oracle", "redhat"],
            "products": [
              "http server",
              "secure global desktop",
              "enterprise manager ops center",
              "jboss enterprise application platform"
            ],
            "exploits": [
              "DoS : Linux : Apache 2.4.7 mod_status - Scoreboard Handling Race Condition"
            ]
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-4598",
            "description":
                " PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read or write to arbitrary files via crafted input to an application that calls (1) a DOMDocument save method or (2) the GD imagepsloadfont function, as demonstrated by a filename\\0.html attack that bypasses an intended configuration in which client users may write to only .html files..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10161",
            "description":
                " The object_common1 function in ext/standard/var_unserializer.c in PHP before 5.6.30, 7.0.x before 7.0.15, and 7.1.x before 7.1.1 allows remote attackers to cause a denial of service (buffer over-read and application crash) via crafted serialized data that is mishandled in a finish_nested_data call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2015-3412",
            "description":
                " PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read arbitrary files via crafted input to an application that calls the stream_resolve_include_path function in ext/standard/streamsfuncs.c, as demonstrated by a filename\\0.extension attack that bypasses an intended configuration in which client users may read files with only one specific extension..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2022-22721",
            "description":
                " If LimitXMLRequestBody is set to allow request bodies larger than 350MB (defaults to 1M) on 32 bit systems an integer overflow happens which later causes out of bounds writes. This issue affects Apache HTTP Server 2.4.52 and earlier..",
            "vendors": ["apache", "oracle"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-4635",
            "description":
                " Integer overflow in the SdnToJewish function in jewish.c in the Calendar component in PHP before 5.3.26 and 5.4.x before 5.4.16 allows context-dependent attackers to cause a denial of service (application hang) via a large argument to the jdtojewish function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0708",
            "description":
                " exif.c in the Exif extension in PHP before 5.3.6 on 64-bit platforms performs an incorrect cast, which allows remote attackers to cause a denial of service (application crash) via an image with a crafted Image File Directory (IFD) that triggers a buffer over-read..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : Multiple : 16261 PHP &#039;Exif&#039; Extension - &#039;exif_read_data()&#039; Remote Denia"
            ]
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-4317",
            "description":
                " The mod_proxy module in the Apache HTTP Server 1.3.x through 1.3.42, 2.0.x through 2.0.64, and 2.2.x through 2.2.21, when the Revision 1179239 patch is in place, does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers via a malformed URI containing an @ (at sign) character and a : (colon) character in invalid positions.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2011-3368..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2018-10547",
            "description":
                " An issue was discovered in ext/phar/phar_object.c in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. There is Reflected XSS on the PHAR 403 and 404 error pages via request data of a request for a .phar file. NOTE: this vulnerability exists because of an incomplete fix for CVE-2018-5712..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5769",
            "description":
                " Multiple integer overflows in mcrypt.c in the mcrypt extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allow remote attackers to cause a denial of service (heap-based buffer overflow and application crash) or possibly have unspecified other impact via a crafted length value, related to the (1) mcrypt_generic and (2) mdecrypt_generic functions..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-3307",
            "description":
                " The phar_parse_metadata function in ext/phar/phar.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (heap metadata corruption) or possibly have unspecified other impact via a crafted tar archive..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2014-9912",
            "description":
                " The get_icu_disp_value_src_php function in ext/intl/locale/locale_methods.c in PHP before 5.3.29, 5.4.x before 5.4.30, and 5.5.x before 5.5.14 does not properly restrict calls to the ICU uresbund.cpp component, which allows remote attackers to cause a denial of service (buffer overflow) or possibly have unspecified other impact via a locale_get_display_name call with a long first argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-4699",
            "description":
                " The iconv_mime_decode_headers function in the Iconv extension in PHP before 5.3.4 does not properly handle encodings that are unrecognized by the iconv and mbstring (aka Multibyte String) implementations, which allows remote attackers to trigger an incomplete output array, and possibly bypass spam detection or have unspecified other impact, via a crafted Subject header in an e-mail message, as demonstrated by the ks_c_5601-1987 character set..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-5387",
            "description":
                " The Apache HTTP Server through 2.4.23 follows RFC 3875 section 4.1.18 and therefore does not protect applications from the presence of untrusted client data in the HTTP_PROXY environment variable, which might allow remote attackers to redirect an application's outbound HTTP traffic to an arbitrary proxy server via a crafted Proxy header in an HTTP request, aka an \"httpoxy\" issue.  NOTE: the vendor states \"This mitigation has been assigned the identifier CVE-2016-5387\"; in other words, this is not a CVE ID for a vulnerability..",
            "vendors": ["apache", "oracle", "hp", "redhat"],
            "products": [
              "system management homepage",
              "jboss enterprise web server",
              "http server",
              "enterprise manager ops center",
              "jboss core services",
              "jboss web server",
              "communications user data repository"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-29404",
            "description":
                " In Apache HTTP Server 2.4.53 and earlier, a malicious request to a lua script that calls r:parsebody(0) may cause a denial of service due to no default limit on possible input size..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4599",
            "description":
                " The SoapFault::__toString method in ext/soap/soap.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to obtain sensitive information, cause a denial of service (application crash), or possibly execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9,
            "cveNo": "CVE-2021-40438",
            "description":
                " A crafted request uri-path can cause mod_proxy to forward the request to an origin server choosen by the remote user. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "storagegrid",
              "enterprise manager ops center",
              "secure global desktop",
              "sinema server",
              "cloud backup",
              "instantis enterprisetrack",
              "sinec nms",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-5590",
            "description":
                " Stack-based buffer overflow in the phar_fix_filepath function in ext/phar/phar.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large length value, as demonstrated by mishandling of an e-mail attachment by the imap PHP extension..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5093",
            "description":
                " The get_icu_value_internal function in ext/intl/locale/locale_methods.c in PHP before 5.5.36, 5.6.x before 5.6.22, and 7.x before 7.0.7 does not ensure the presence of a '\\0' character, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a crafted locale_get_primary_language call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7132",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via an invalid wddxPacket XML document that is mishandled in a wddx_deserialize call, as demonstrated by a stray element inside a boolean element, leading to incorrect pop processing..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6288",
            "description":
                " The php_url_parse_ex function in ext/standard/url.c in PHP before 5.5.38 allows remote attackers to cause a denial of service (buffer over-read) or possibly have unspecified other impact via vectors involving the smart_str data type..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7130",
            "description":
                " The php_wddx_pop_element function in ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via an invalid base64 binary value, as demonstrated by a wddx_deserialize call that mishandles a binary element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8994",
            "description":
                " An issue was discovered in PHP 5.x and 7.x, when the configuration uses apache2handler/mod_php or php-fpm with OpCache enabled. With 5.x after 5.6.28 or 7.x after 7.0.13, the issue is resolved in a non-default configuration with the opcache.validate_permission=1 setting. The vulnerability details are as follows. In PHP SAPIs where PHP interpreters share a common parent process, Zend OpCache creates a shared memory object owned by the common parent during initialization. Child PHP processes inherit the SHM descriptor, using it to cache and retrieve compiled script bytecode (\"opcode\" in PHP jargon). Cache keys vary depending on configuration, but filename is a central key component, and compiled opcode can generally be run if a script's filename is known or can be guessed. Many common shared-hosting configurations change EUID in child processes to enforce privilege separation among hosted users (for example using mod_ruid2 for the Apache HTTP Server, or php-fpm user settings). In these scenarios, the default Zend OpCache behavior defeats script file permissions by sharing a single SHM cache among all child PHP processes. PHP scripts often contain sensitive information: Think of CMS configurations where reading or running another user's script usually means gaining privileges to the CMS database..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2008-0455",
            "description":
                " Cross-site scripting (XSS) vulnerability in the mod_negotiation module in the Apache HTTP Server 2.2.6 and earlier in the 2.2.x series, 2.0.61 and earlier in the 2.0.x series, and 1.3.39 and earlier in the 1.3.x series allows remote authenticated users to inject arbitrary web script or HTML by uploading a file with a name containing XSS sequences and a file extension, which leads to injection within a (1) \"406 Not Acceptable\" or (2) \"300 Multiple Choices\" HTTP response when the extension is omitted in a request for the file..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-3478",
            "description":
                " Buffer overflow in the mconvert function in softmagic.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, allows remote attackers to cause a denial of service (application crash) via a crafted Pascal string in a FILE_PSTRING conversion..",
            "vendors": ["php", "christos_zoulas"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8873",
            "description":
                " Stack consumption vulnerability in Zend/zend_exceptions.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to cause a denial of service (segmentation fault) via recursive method calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2018-1302",
            "description":
                " When an HTTP/2 stream was destroyed after being handled, the Apache HTTP Server prior to version 2.4.30 could have written a NULL pointer potentially to an already freed memory. The memory pools maintained by the server make this vulnerability hard to trigger in usual configurations, the reporter and the team could not reproduce it outside debug builds, so it is classified as low risk..",
            "vendors": ["apache", "canonical", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-1303",
            "description":
                " A specially crafted HTTP request header could have crashed the Apache HTTP Server prior to version 2.4.30 due to an out of bound read while preparing data to be cached in shared memory. It could be used as a Denial of Service attack against users of mod_cache_socache. The vulnerability is considered as low risk since mod_cache_socache is not widely used, mod_cache_disk is not concerned by this vulnerability..",
            "vendors": ["apache", "debian", "canonical", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store"
            ],
            "exploits": [
              "webapps : PHP : 44960 DAMICMS 6.0.0 - Cross-Site Request Forgery (Add Admin)",
              "webapps : Hardware : 44938 Ecessa ShieldLink SL175EHQ &lt; 10.7.4 - Cross-Site Request Forgery (Add S"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2022-22720",
            "description":
                " Apache HTTP Server 2.4.52 and earlier fails to close inbound connection when errors are encountered discarding the request body, exposing the server to HTTP Request Smuggling.",
            "vendors": ["apache", "oracle"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8877",
            "description":
                " The gdImageScaleTwoPass function in gd_interpolation.c in the GD Graphics Library (aka libgd) before 2.2.0, as used in PHP before 5.6.12, uses inconsistent allocate and free approaches, which allows remote attackers to cause a denial of service (memory consumption) via a crafted call, as demonstrated by a call to the PHP imagescale function..",
            "vendors": ["libgd", "php"],
            "products": ["libgd", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8874",
            "description":
                " Stack consumption vulnerability in GD in PHP before 5.6.12 allows remote attackers to cause a denial of service via a crafted imagefilltoborder call..",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.2,
            "cveNo": "CVE-2016-3142",
            "description":
                " The phar_parse_zipfile function in zip.c in the PHAR extension in PHP before 5.5.33 and 5.6.x before 5.6.19 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (out-of-bounds read and application crash) by placing a PK\\x05\\x06 signature at an invalid location..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5096",
            "description":
                " Integer overflow in the fread function in ext/standard/file.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large integer in the second argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4643",
            "description":
                " Integer overflow in the ftp_genlist function in ext/ftp/ftp.c in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 allows remote FTP servers to execute arbitrary code via a long reply to a LIST command, leading to a heap-based buffer overflow.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2015-4022..",
            "vendors": ["oracle", "debian", "php", "redhat"],
            "products": [
              "enterprise_linux_server_tus",
              "enterprise_linux_server_aus",
              "debian_linux",
              "linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8879",
            "description":
                " The odbc_bindcols function in ext/odbc/php_odbc.c in PHP before 5.6.12 mishandles driver behavior for SQL_WVARCHAR columns, which allows remote attackers to cause a denial of service (application crash) in opportunistic circumstances by leveraging use of the odbc_fetch_array function to access a certain type of Microsoft SQL Server table..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-9253",
            "description":
                " An issue was discovered in PHP 7.3.x before 7.3.0alpha3, 7.2.x before 7.2.8, and before 7.1.20. The php-fpm master process restarts a child process in an endless loop when using program execution functions (e.g., passthru, exec, shell_exec, or system) with a non-blocking STDIN stream, causing this master process to consume 100% of the CPU, and consume disk space with a large volume of error logs, as demonstrated by an attack by a customer of a shared-hosting facility..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9653",
            "description":
                " readelf.c in file before 5.22, as used in the Fileinfo component in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5, does not consider that pread calls sometimes read only a subset of the available data, which allows remote attackers to cause a denial of service (uninitialized memory access) or possibly have unspecified other impact via a crafted ELF file..",
            "vendors": ["file_project", "debian", "php"],
            "products": ["file", "debian_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4021",
            "description":
                " The phar_parse_tarfile function in ext/phar/tar.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 does not verify that the first character of a filename is different from the \\0 character, which allows remote attackers to cause a denial of service (integer underflow and memory corruption) via a crafted entry in a tar archive..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-1823",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.12 and 5.4.x before 5.4.2, when configured as a CGI script (aka php-cgi), does not properly handle query strings that lack an = (equals sign) character, which allows remote attackers to execute arbitrary code by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'd' case..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2015-8838",
            "description":
                " ext/mysqlnd/mysqlnd.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 uses a client SSL option to mean that SSL is optional, which allows man-in-the-middle attackers to spoof servers via a cleartext-downgrade attack, a related issue to CVE-2015-3152..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4022",
            "description":
                " Integer overflow in the ftp_genlist function in ext/ftp/ftp.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 allows remote FTP servers to execute arbitrary code via a long reply to a LIST command, leading to a heap-based buffer overflow..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4025",
            "description":
                " PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 truncates a pathname upon encountering a \\x00 character in certain situations, which allows remote attackers to bypass intended extension restrictions and access files or directories with unexpected names via a crafted argument to (1) set_include_path, (2) tempnam, (3) rmdir, or (4) readlink.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-6712",
            "description":
                " The scan function in ext/date/lib/parse_iso_intervals.c in PHP through 5.5.6 does not properly restrict creation of DateInterval objects, which might allow remote attackers to cause a denial of service (heap-based buffer over-read) via a crafted interval specification..",
            "vendors": ["apple", "opensuse", "php"],
            "products": ["mac_os_x", "opensuse", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4026",
            "description":
                " The pcntl_exec implementation in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 truncates a pathname upon encountering a \\x00 character, which might allow remote attackers to bypass intended extension restrictions and execute files with unexpected names via a crafted first argument.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9425",
            "description":
                " Double free vulnerability in the zend_ts_hash_graceful_destroy function in zend_ts_hash.c in the Zend Engine in PHP through 5.5.20 and 5.6.x through 5.6.4 allows remote attackers to cause a denial of service or possibly have unspecified other impact via unknown vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-9226",
            "description":
                " An issue was discovered in Oniguruma 6.2.0, as used in Oniguruma-mod in Ruby through 2.4.1 and mbstring in PHP through 7.1.5. A heap out-of-bounds write or read occurs in next_state_val() during regular expression compilation. Octal numbers larger than 0xff are not handled correctly in fetch_token() and fetch_token_in_cc(). A malformed regular expression containing an octal number in the form of '\\700' would produce an invalid code point value larger than 0xff in next_state_val(), resulting in an out-of-bounds write memory corruption..",
            "vendors": ["oniguruma project", "php"],
            "products": ["php", "oniguruma"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9427",
            "description":
                " sapi/cgi/cgi_main.c in the CGI component in PHP through 5.4.36, 5.5.x through 5.5.20, and 5.6.x through 5.6.4, when mmap is used to read a .php file, does not properly consider the mapping's length during processing of an invalid file that begins with a # character and lacks a newline character, which causes an out-of-bounds read and might (1) allow remote attackers to obtain sensitive information from php-cgi process memory by leveraging the ability to upload a .php file or (2) trigger unexpected code execution if a valid PHP script is present in memory locations adjacent to the mapping..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9426",
            "description":
                " ** DISPUTED ** The apprentice_load function in libmagic/apprentice.c in the Fileinfo component in PHP through 5.6.4 attempts to perform a free operation on a stack-based character array, which allows remote attackers to cause a denial of service (memory corruption or application crash) or possibly have unspecified other impact via unknown vectors.  NOTE: this is disputed by the vendor because the standard erealloc behavior makes the free operation unreachable..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10158",
            "description":
                " The exif_convert_any_to_int function in ext/exif/exif.c in PHP before 5.6.30, 7.0.x before 7.0.15, and 7.1.x before 7.1.1 allows remote attackers to cause a denial of service (application crash) via crafted EXIF data that triggers an attempt to divide the minimum representable negative integer by -1..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10159",
            "description":
                " Integer overflow in the phar_parse_pharfile function in ext/phar/phar.c in PHP before 5.6.30 and 7.0.x before 7.0.15 allows remote attackers to cause a denial of service (memory consumption or application crash) via a truncated manifest entry in a PHAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-3670",
            "description":
                " The exif_ifd_make_value function in exif.c in the EXIF extension in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 operates on floating-point arrays incorrectly, which allows remote attackers to cause a denial of service (heap memory corruption and application crash) or possibly execute arbitrary code via a crafted JPEG image with TIFF thumbnail data that is improperly handled by the exif_thumbnail function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0098",
            "description":
                " The log_cookie function in mod_log_config.c in the mod_log_config module in the Apache HTTP Server before 2.4.8 allows remote attackers to cause a denial of service (segmentation fault and daemon crash) via a crafted cookie that is not properly handled during truncation..",
            "vendors": ["apache", "oracle"],
            "products": ["http server", "secure global desktop"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-0228",
            "description":
                " The lua_websocket_read function in lua_request.c in the mod_lua module in the Apache HTTP Server through 2.4.12 allows remote attackers to cause a denial of service (child-process crash) by sending a crafted WebSocket Ping frame after a Lua script has called the wsupgrade function..",
            "vendors": ["apple", "apache", "opensuse", "canonical"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9641",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_TIFF..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-9224",
            "description":
                " An issue was discovered in Oniguruma 6.2.0, as used in Oniguruma-mod in Ruby through 2.4.1 and mbstring in PHP through 7.1.5. A stack out-of-bounds read occurs in match_at() during regular expression searching. A logical error involving order of validation and access in match_at() could result in an out-of-bounds read from a stack buffer..",
            "vendors": ["oniguruma project", "php"],
            "products": ["php", "oniguruma"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-8743",
            "description":
                " Apache HTTP Server, in all releases prior to 2.2.32 and 2.4.25, was liberal in the whitespace accepted from requests and sent in response lines and headers. Accepting these different behaviors represented a security concern when httpd participates in any chain of proxies or interacts with back-end application servers, either through mod_proxy or using conventional CGI mechanisms, and may result in request smuggling, response splitting and cache pollution..",
            "vendors": ["apache", "redhat", "netapp"],
            "products": [
              "http server",
              "oncommand unified manager",
              "jboss core services",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-3365",
            "description":
                " The SQLite functionality in PHP before 5.3.15 allows remote attackers to bypass the open_basedir protection mechanism via unspecified vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-15132",
            "description":
                " An issue was discovered in ext/standard/link_win32.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. The linkinfo function on Windows doesn't implement the open_basedir check. This could be abused to find files on paths outside of the allowed directories..",
            "vendors": ["php", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7124",
            "description":
                " ext/standard/var_unserializer.c in PHP before 5.6.25 and 7.x before 7.0.10 mishandles certain invalid objects, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data that leads to a (1) __destruct call or (2) magic method call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7125",
            "description":
                " ext/session/session.c in PHP before 5.6.25 and 7.x before 7.0.10 skips invalid session names in a way that triggers incorrect parsing, which allows remote attackers to inject arbitrary-type session data by leveraging control of a session name, as demonstrated by object injection..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7126",
            "description":
                " The imagetruecolortopalette function in ext/gd/gd.c in PHP before 5.6.25 and 7.x before 7.0.10 does not properly validate the number of colors, which allows remote attackers to cause a denial of service (select_colors allocation error and out-of-bounds write) or possibly have unspecified other impact via a large value in the third argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7127",
            "description":
                " The imagegammacorrect function in ext/gd/gd.c in PHP before 5.6.25 and 7.x before 7.0.10 does not properly validate gamma values, which allows remote attackers to cause a denial of service (out-of-bounds write) or possibly have unspecified other impact by providing different signs for the second and third arguments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6836",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/843.html\">CWE-843: Access of Resource Using Incompatible Type ('Type Confusion')</a>..  The SoapClient __call method in ext/soap/soap.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 does not properly manage headers, which allows remote attackers to execute arbitrary code via crafted serialized data that triggers a \"type confusion\" in the serialize_function_call function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4642",
            "description":
                " The escapeshellarg function in ext/standard/exec.c in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 on Windows allows remote attackers to execute arbitrary OS commands via a crafted string to an application that accepts command-line arguments for a call to the PHP system function..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0753",
            "description":
                " Race condition in the PCNTL extension in PHP before 5.3.4, when a user-defined signal handler exists, might allow context-dependent attackers to cause a denial of service (memory corruption) via a large number of concurrent signals..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2016-7128",
            "description":
                " The exif_process_IFD_in_TIFF function in ext/exif/exif.c in PHP before 5.6.25 and 7.x before 7.0.10 mishandles the case of a thumbnail offset that exceeds the file size, which allows remote attackers to obtain sensitive information from process memory via a crafted TIFF image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7129",
            "description":
                " The php_wddx_process_data function in ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (segmentation fault) or possibly have unspecified other impact via an invalid ISO 8601 time value, as demonstrated by a wddx_deserialize call that mishandles a dateTime element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-0755",
            "description":
                " Integer overflow in the mt_rand function in PHP before 5.3.4 might make it easier for context-dependent attackers to predict the return values by leveraging a script's use of a large max parameter, as demonstrated by a value that exceeds mt_getrandmax..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.4,
            "cveNo": "CVE-2011-0754",
            "description":
                " The SplFileInfo::getType function in the Standard PHP Library (SPL) extension in PHP before 5.3.4 on Windows does not properly detect symbolic links, which might make it easier for local users to conduct symlink attacks by leveraging cross-platform differences in the stat structure, related to lack of a FILE_ATTRIBUTE_REPARSE_POINT check..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3267",
            "description":
                " PHP before 5.3.7 does not properly implement the error_log function, which allows context-dependent attackers to cause a denial of service (application crash) via unspecified vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-2554",
            "description":
                " Stack-based buffer overflow in ext/phar/tar.c in PHP before 5.5.32, 5.6.x before 5.6.18, and 7.x before 7.0.3 allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a crafted TAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2017-11628",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, a stack-based buffer overflow in the zend_ini_do_op() function in Zend/zend_ini_parser.c could cause a denial of service or potentially allow executing code. NOTE: this is only relevant for PHP applications that accept untrusted input (instead of the system's php.ini file) for the parse_ini_string or parse_ini_file function, e.g., a web application for syntax validation of php.ini directives..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3480",
            "description":
                " The cdf_count_chain function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, does not properly validate sector-count data, which allows remote attackers to cause a denial of service (application crash) via a crafted CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-12933",
            "description":
                " The finish_nested_data function in ext/standard/var_unserializer.re in PHP before 5.6.31, 7.0.x before 7.0.21, and 7.1.x before 7.1.7 is prone to a buffer over-read while unserializing untrusted data. Exploitation of this issue can have an unspecified impact on the integrity of PHP..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2014-4721",
            "description":
                " The phpinfo implementation in ext/standard/info.c in PHP before 5.4.30 and 5.5.x before 5.5.14 does not ensure use of the string data type for the PHP_AUTH_PW, PHP_AUTH_TYPE, PHP_AUTH_USER, and PHP_SELF variables, which might allow context-dependent attackers to obtain sensitive information from process memory by using the integer data type with crafted values, related to a \"type confusion\" vulnerability, as demonstrated by reading a private SSL key in an Apache HTTP Server web-hosting environment with mod_ssl and a PHP 5.3.x mod_php..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2011-3268",
            "description":
                " Buffer overflow in the crypt function in PHP before 5.3.7 allows context-dependent attackers to have an unspecified impact via a long salt argument, a different vulnerability than CVE-2011-2483..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5772",
            "description":
                " Double free vulnerability in the php_wddx_process_data function in wddx.c in the WDDX extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via crafted XML data that is mishandled in a wddx_deserialize call..",
            "vendors": ["suse", "php"],
            "products": ["php", "linux enterprise debuginfo"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-9767",
            "description":
                " Directory traversal vulnerability in the ZipArchive::extractTo function in ext/zip/php_zip.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 and ext/zip/ext_zip.cpp in HHVM before 3.12.1 allows remote attackers to create arbitrary empty directories via a crafted ZIP archive..",
            "vendors": ["php", "hiphop_virtual_machine_for_php_project"],
            "products": ["hiphop_virtual_machine_for_php", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-2331",
            "description":
                " Integer overflow in the _zip_cdir_new function in zip_dirent.c in libzip 0.11.2 and earlier, as used in the ZIP extension in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 and other products, allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a ZIP archive that contains many entries, leading to a heap-based buffer overflow..",
            "vendors": ["fedoraproject", "debian", "opensuse", "php", "nih"],
            "products": ["fedora", "debian_linux", "opensuse", "php", "libzip"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-1896",
            "description":
                " mod_dav.c in the Apache HTTP Server before 2.2.25 does not properly determine whether DAV is enabled for a URI, which allows remote attackers to cause a denial of service (segmentation fault) via a MERGE request in which the URI is configured for handling by the mod_dav_svn module, but a certain href attribute in XML data refers to a non-DAV URI..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4537",
            "description":
                " The bcpowmod function in ext/bcmath/bcmath.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 accepts a negative integer for the scale argument, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via a crafted call..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-2336",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.13 and 5.4.x before 5.4.3, when configured as a CGI script (aka php-cgi), does not properly handle query strings that lack an = (equals sign) character, which allows remote attackers to cause a denial of service (resource consumption) by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'T' case.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1823..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4538",
            "description":
                " The bcpowmod function in ext/bcmath/bcmath.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 modifies certain data structures without considering whether they are copies of the _zero_, _one_, or _two_ global variable, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via a crafted call..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4539",
            "description":
                " The xml_parse_into_struct function in ext/xml/xml.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (buffer under-read and segmentation fault) or possibly have unspecified other impact via crafted XML data in the second argument, leading to a parser level of zero..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-2483",
            "description":
                " crypt_blowfish before 1.1, as used in PHP before 5.3.7 on certain platforms, PostgreSQL before 8.4.9, and other products, does not properly handle 8-bit characters, which makes it easier for context-dependent attackers to determine a cleartext password by leveraging knowledge of a password hash..",
            "vendors": ["php", "solar_designer"],
            "products": ["crypt_blowfish", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5095",
            "description":
                " Integer overflow in the php_escape_html_entities_ex function in ext/standard/html.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact by triggering a large output string from a FILTER_SANITIZE_FULL_SPECIAL_CHARS filter_var call.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2016-5094..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2014-4698",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\" target=\"_blank\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in ext/spl/spl_array.c in the SPL component in PHP through 5.5.14 allows context-dependent attackers to cause a denial of service or possibly have unspecified other impact via crafted ArrayIterator usage within applications in certain web-hosting environments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-3329",
            "description":
                " Multiple stack-based buffer overflows in the phar_set_inode function in phar_internal.h in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allow remote attackers to execute arbitrary code via a crafted length value in a (1) tar, (2) phar, or (3) ZIP archive..",
            "vendors": ["apple", "oracle", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "linux",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-19395",
            "description":
                " ext/standard/var.c in PHP 5.x through 7.1.24 on Windows allows attackers to cause a denial of service (NULL pointer dereference and application crash) because com and com_safearray_proxy return NULL in com_properties_get in ext/com_dotnet/com_handlers.c, as demonstrated by a serialize call on COM(\"WScript.Shell\")..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-0789",
            "description":
                " Memory leak in the timezone functionality in PHP before 5.3.9 allows remote attackers to cause a denial of service (memory consumption) by triggering many strtotime function calls, which are not properly handled by the php_date_parse_tzfile cache..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7131",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via a malformed wddxPacket XML document that is mishandled in a wddx_deserialize call, as demonstrated by a tag that lacks a < (less than) character..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-0788",
            "description":
                " The PDORow implementation in PHP before 5.3.9 does not properly interact with the session feature, which allows remote attackers to cause a denial of service (application crash) via a crafted application that uses a PDO driver for a fetch and then calls the session_start function, as demonstrated by a crash of the Apache HTTP Server..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-3411",
            "description":
                " PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read or write to arbitrary files via crafted input to an application that calls (1) a DOMDocument load method, (2) the xmlwriter_open_uri function, (3) the finfo_file function, or (4) the hash_hmac_file function, as demonstrated by a filename\\0.xml attack that bypasses an intended configuration in which client users may read only .xml files..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2016-6289",
            "description":
                " Integer overflow in the virtual_file_ex function in TSRM/tsrm_virtual_cwd.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (stack-based buffer overflow) or possibly have unspecified other impact via a crafted extract operation on a ZIP archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-3499",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the Apache HTTP Server 2.2.x before 2.2.24-dev and 2.4.x before 2.4.4 allow remote attackers to inject arbitrary web script or HTML via vectors involving hostnames and URIs in the (1) mod_imagemap, (2) mod_info, (3) mod_ldap, (4) mod_proxy_ftp, and (5) mod_status modules..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2010-4657",
            "description":
                " PHP5 before 5.4.4 allows passing invalid utf-8 strings via the xmlTextWriterWriteAttribute, which are then misparsed by libxml2. This results in memory leak into the resulting output..",
            "vendors": ["debian", "php", "redhat"],
            "products": ["enterprise_linux", "debian_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-9934",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.28 and 7.x before 7.0.13 allows remote attackers to cause a denial of service (NULL pointer dereference) via crafted serialized data in a wddxPacket XML document, as demonstrated by a PDORow string..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2018-19520",
            "description":
                " An issue was discovered in SDCMS 1.6 with PHP 5.x. app/admin/controller/themecontroller.php uses a check_bad function in an attempt to block certain PHP functions such as eval, but does not prevent use of preg_replace 'e' calls, allowing users to execute arbitrary code by leveraging access to admin template management..",
            "vendors": ["php", "sdcms"],
            "products": ["php", "sdcms"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7478",
            "description":
                " Zend/zend_exceptions.c in PHP, possibly 5.x before 5.6.28 and 7.x before 7.0.13, allows remote attackers to cause a denial of service (infinite loop) via a crafted Exception object in serialized data, a related issue to CVE-2015-8876...  <a href=\"http://cwe.mitre.org/data/definitions/835.html\">CWE-835: Loop with Unreachable Exit Condition ('Infinite Loop')</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4644",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The php_pgsql_meta_data function in pgsql.c in the PostgreSQL (aka pgsql) extension in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 does not validate token extraction for table names, which might allow remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted name.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2015-1352..",
            "vendors": ["php", "redhat"],
            "products": ["enterprise_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11142",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.17, and 7.1.x before 7.1.3, remote attackers could cause a CPU consumption denial of service attack by injecting long form variables, related to main/php_variables.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-2386",
            "description":
                " Integer overflow in the phar_parse_tarfile function in tar.c in the phar extension in PHP before 5.3.14 and 5.4.x before 5.4.4 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted tar file that triggers a heap-based buffer overflow..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-4343",
            "description":
                " The phar_make_dirstream function in ext/phar/dirstream.c in PHP before 5.6.18 and 7.x before 7.0.3 mishandles zero-size ././@LongLink files, which allows remote attackers to cause a denial of service (uninitialized pointer dereference) or possibly have unspecified other impact via a crafted TAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-4342",
            "description":
                " ext/phar/phar_object.c in PHP before 5.5.32, 5.6.x before 5.6.18, and 7.x before 7.0.3 mishandles zero-length uncompressed data, which allows remote attackers to cause a denial of service (heap memory corruption) or possibly have unspecified other impact via a crafted (1) TAR, (2) ZIP, or (3) PHAR archive..",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2012-2376",
            "description":
                " Buffer overflow in the com_print_typeinfo function in PHP 5.4.3 and earlier on Windows allows remote attackers to execute arbitrary code via crafted arguments that trigger incorrect handling of COM object VARIANT types, as exploited in the wild in May 2012..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": [
              "local : Windows_x86 : 18861 PHP 5.4.3 (Windows x86 Polish) - Code Execution"
            ]
          },
          {
            "cyfirmaScore": 3.3,
            "cveNo": "CVE-2014-3981",
            "description":
                " acinclude.m4, as used in the configure script in PHP 5.5.13 and earlier, allows local users to overwrite arbitrary files via a symlink attack on the /tmp/phpglibccheck file..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2016-8612",
            "description":
                " Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process..",
            "vendors": ["apache", "redhat", "netapp"],
            "products": [
              "enterprise_linux",
              "storage_automation_store",
              "http_server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-7803",
            "description":
                " The phar_get_entry_data function in ext/phar/util.c in PHP before 5.5.30 and 5.6.x before 5.6.14 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a .phar file with a crafted TAR archive entry in which the Link indicator references a file that does not exist...  <a href=\"https://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>\n\n<a href=\"http://lists.apple.com/archives/security-announce/2015/Dec/msg00005.html\">Per Advisory: The attack can lead to remote code execution.",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-7804",
            "description":
                " <a href=\"http://lists.apple.com/archives/security-announce/2015/Dec/msg00005.html\">Per Advisory: The attack can lead to remote code execution..  Off-by-one error in the phar_parse_zipfile function in ext/phar/zip.c in PHP before 5.5.30 and 5.6.x before 5.6.14 allows remote attackers to cause a denial of service (uninitialized pointer dereference and application crash) by including the / filename in a .zip PHAR archive..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2018-1301",
            "description":
                " A specially crafted request could have crashed the Apache HTTP Server prior to version 2.4.30, due to an out of bound access after a size limit is reached by reading the HTTP header. This vulnerability is considered very hard if not impossible to trigger in non-debug mode (both log and build level), so it is classified as low risk for common server usage..",
            "vendors": ["apache", "debian", "canonical", "redhat", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2017-9788",
            "description":
                " In Apache httpd before 2.2.34 and 2.4.x before 2.4.27, the value placeholder in [Proxy-]Authorization headers of type 'Digest' was not initialized or reset before or between successive key=value assignments by mod_auth_digest. Providing an initial key with no '=' assignment could reflect the stale value of uninitialized pool memory used by the prior request, leading to leakage of potentially confidential information, and a segfault in other cases resulting in denial of service..",
            "vendors": [
              "apple",
              "apache",
              "oracle",
              "debian",
              "redhat",
              "netapp"
            ],
            "products": [
              "jboss enterprise web server",
              "http server",
              "oncommand unified manager",
              "secure global desktop",
              "jboss core services",
              "storage automation store",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 3.6,
            "cveNo": "CVE-2014-5459",
            "description":
                " The PEAR_REST class in REST.php in PEAR in PHP through 5.6.0 allows local users to write to arbitrary files via a symlink attack on a (1) rest.cachefile or (2) rest.cacheid file in /tmp/pear/cache/, related to the retrieveCacheFirst and useLocalCache functions..",
            "vendors": ["oracle", "opensuse", "php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-2348",
            "description":
                " The move_uploaded_file implementation in ext/standard/basic_functions.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 truncates a pathname upon encountering a \\x00 character, which allows remote attackers to bypass intended extension restrictions and create files with unexpected names via a crafted second argument.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "opensuse", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "opensuse",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-30556",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may return lengths to applications calling r:wsread() that point past the end of the storage allocated for the buffer..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-3330",
            "description":
                " The php_handler function in sapi/apache2handler/sapi_apache2.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, when the Apache HTTP Server 2.4.x is used, allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via pipelined HTTP requests that result in a \"deconfigured interpreter.\".",
            "vendors": ["apple", "oracle", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "linux",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-16642",
            "description":
                " In PHP before 5.6.32, 7.x before 7.0.25, and 7.1.x before 7.1.11, an error in the date extension's timelib_meridian handling of 'front of' and 'back of' directives could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: this is a different issue than CVE-2017-11145..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": [
              "clustered_data_ontap",
              "debian_linux",
              "php",
              "storage_automation_store",
              "ubuntu_linux"
            ],
            "exploits": [
              "dos : Multiple : 43133 PHP 7.1.8 - Heap Buffer Overflow"
            ]
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1471",
            "description":
                " Integer signedness error in zip_stream.c in the Zip extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (CPU consumption) via a malformed archive file that triggers errors in zip_fread function calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1470",
            "description":
                " The Zip extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via a ziparchive stream that is not properly handled by the stream_get_contents function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3479",
            "description":
                " The cdf_check_stream_offset function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, relies on incorrect sector-size data, which allows remote attackers to cause a denial of service (application crash) via a crafted stream offset in a CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2022-28615",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may crash or disclose information due to a read beyond bounds in ap_strcmp_match() when provided with an extremely large input buffer. While no code distributed with the server can be coerced into such a call, third-party modules or lua scripts that use ap_strcmp_match() may hypothetically be affected..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2022-28614",
            "description":
                " The ap_rwrite() function in Apache HTTP Server 2.4.53 and earlier may read unintended memory if an attacker can cause the server to reflect very large input using ap_rwrite() or ap_rputs(), such as with mod_luas r:puts() function. Modules compiled and distributed separately from Apache HTTP Server that use the 'ap_rputs' function and may pass it a very large (INT_MAX or larger) string must be compiled against current headers to resolve the issue..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          }
        ],
        "dataBreachIPVulnerabilityId": "635efabf3d72934a4d174ee6",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description":
            "You have software php 5.2.17, http_server 2.2.15, jquery cloudflare running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">GCMAN</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">RTM</span>, <span class=\"active-txt TA\">Stone Panda</span>, <span class=\"active-txt TA\">TATestFORAsset</span>, <span class=\"active-txt TA\">Test_New_ThreatActor</span>",
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": true,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": true,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 9,
        "riskRating": 9,
        "openPortRiskRating": 1,
        "configRiskRating": 9,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "openPortLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "configLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "threatActors": [
          "Fancy Bear",
          "GCMAN",
          "Lazarus Group",
          "MISSION2025",
          "RTM",
          "Stone Panda",
          "TATestFORAsset",
          "Test_New_ThreatActor"
        ],
        "subDomainUID": "625fcd733d7293cd2cc4966d",
        "subDomainCreatedDate": "2022-04-20T09:08:03.389Z",
        "isNew": false
      }
    },
    {
      "id": "635f9f8c3d7293962a8db0f9",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635ef9443d72934a4d174ba3",
      "date": null,
      "createdDate": "2022-10-31T10:12:28.826",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: lyncdiscover.cyfirma.com",
      "description":
          "You have software windows , internet_information_services 8.5,  running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">Stone Panda</span>",
      "riskScore": 6,
      "source": "lyncdiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "lyncdiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:23:00.426Z",
        "lastModifiedDate": "2022-10-30T22:23:00.426Z",
        "id": "635ef9443d72934a4d174ba3",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "lyncdiscover.cyfirma.com",
        "ip": "52.113.67.78",
        "ips": ["52.113.67.78"],
        "source": "lyncdiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Content-Type=[application/json], Expires=[-1], X-MS-Correlation-Id=[66118443-0a62-489a-8665-7ec170409057], x-ms-client-request-id=[15b0e5fd-ff7f-4084-8860-59b393239308], X-Content-Type-Options=[nosniff], Date=[Sun, 30 Oct 2022 21:32:41 GMT], Content-Length=[351]}",
        "software": "windows , internet_information_services 8.5",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {"windows": "", "internet.information.services": "8.5"},
        "technologyList": [
          "internet information services",
          "windows",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": true,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": ["CVE-2014-4078"],
        "cveDetails": [
          {
            "cyfirmaScore": 5.1,
            "cveNo": "CVE-2014-4078",
            "description":
                " The IP Security feature in Microsoft Internet Information Services (IIS) 8.0 and 8.5 does not properly process wildcard allow and deny rules for domains within the \"IP Address and Domain Restrictions\" list, which makes it easier for remote attackers to bypass an intended rule set via an HTTP request, aka \"IIS Security Feature Bypass Vulnerability.\".",
            "vendors": ["microsoft"],
            "products": ["internet_information_services"],
            "exploits": []
          }
        ],
        "dataBreachIPVulnerabilityId": "6288dd0f3d7293f0df5249b1",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description":
            "You have software windows , internet_information_services 8.5,  running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">Stone Panda</span>",
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 6,
        "riskRating": 6,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:23:00.426Z",
        "openPortLastModifiedDate": "2022-10-30T22:23:00.426Z",
        "configLastModifiedDate": "2022-10-30T22:23:00.426Z",
        "threatActors": [
          "Fancy Bear",
          "Lazarus Group",
          "MISSION2025",
          "Stone Panda"
        ],
        "subDomainUID": "625fcd8c3d7293cd2cc4968e",
        "subDomainCreatedDate": "2022-04-20T09:08:28.520Z",
        "isNew": false
      }
    },
    {
      "id": "635f015b3d72934a4d176414",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635efb1e3d72934a4d174f9d",
      "date": null,
      "createdDate": "2022-10-30T22:57:31.599",
      "orgId": 1,
      "title": "You have non-standard ports 80, 443 opened",
      "description":
          "You have software php 5.2.17, http_server 2.2.15, jquery cloudflare running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">GCMAN</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">RTM</span>, <span class=\"active-txt TA\">Stone Panda</span>, <span class=\"active-txt TA\">TATestFORAsset</span>, <span class=\"active-txt TA\">Test_New_ThreatActor</span>",
      "riskScore": 1,
      "source": "cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:30:54.766Z",
        "lastModifiedDate": "2022-10-30T22:30:54.766Z",
        "id": "635efb1e3d72934a4d174f9d",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "cyfirma.com",
        "ip": "35.72.96.209",
        "ips": ["54.249.31.228", "35.72.96.209"],
        "source": "cyfirma.com",
        "sourceDataElement":
            "{Date=[Sun, 30 Oct 2022 21:59:27 GMT], Content-Type=[text/html; charset=UTF-8], Transfer-Encoding=[chunked], Connection=[keep-alive], set-cookie=[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly], expires=[Thu, 19 Nov 1981 08:52:00 GMT], Cache-Control=[no-store, no-cache, must-revalidate], pragma=[no-cache], access-control-allow-origin=[https://www.cyfirma.com/], link=[<https://www.cyfirma.com/wp-json/>; rel=\"https://api.w.org/\", <https://www.cyfirma.com/wp-json/wp/v2/pages/13>; rel=\"alternate\"; type=\"application/json\", <https://www.cyfirma.com/>; rel=shortlink], vary=[Accept-Encoding], CF-Cache-Status=[DYNAMIC], Server=[cloudflare], CF-RAY=[76276afbddbef33b-BOM]}",
        "software": "php 5.2.17, http_server 2.2.15, jquery ",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {
          "php": "5.2.17",
          "http.server": "2.2.15",
          "jquery": ""
        },
        "technologyList": [
          "http server",
          "php",
          "cloudflare",
          "http_server",
          "jquery"
        ],
        "technologyStack": null,
        "cookies":
            "[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly]",
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": true,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [
          "CVE-2014-0118",
          "CVE-2014-0238",
          "CVE-2011-1148",
          "CVE-2011-4415",
          "CVE-2014-0231",
          "CVE-2016-5387",
          "CVE-2014-3981",
          "CVE-2014-0237",
          "CVE-2014-0236",
          "CVE-2017-9224",
          "CVE-2016-2554",
          "CVE-2017-7963",
          "CVE-2016-4975",
          "CVE-2017-9226",
          "CVE-2011-1939",
          "CVE-2016-1903",
          "CVE-2006-7243",
          "CVE-2011-1153",
          "CVE-2022-28615",
          "CVE-2011-2483",
          "CVE-2011-1398",
          "CVE-2014-0226",
          "CVE-2010-2068",
          "CVE-2013-6501",
          "CVE-2018-7584",
          "CVE-2018-14851",
          "CVE-2019-9024",
          "CVE-2019-9023",
          "CVE-2019-9020",
          "CVE-2019-9021",
          "CVE-2014-9705",
          "CVE-2016-3185",
          "CVE-2021-34798",
          "CVE-2021-40438",
          "CVE-2013-6712",
          "CVE-2013-2110",
          "CVE-2022-28614",
          "CVE-2011-0708",
          "CVE-2013-1824",
          "CVE-2015-8935",
          "CVE-2018-15132",
          "CVE-2014-0207",
          "CVE-2012-2311",
          "CVE-2016-7413",
          "CVE-2016-7414",
          "CVE-2011-4885",
          "CVE-2016-7411",
          "CVE-2016-7412",
          "CVE-2016-5114",
          "CVE-2016-8743",
          "CVE-2014-5459",
          "CVE-2016-7417",
          "CVE-2016-7418",
          "CVE-2016-7416",
          "CVE-2022-22721",
          "CVE-2012-2687",
          "CVE-2012-2688",
          "CVE-2022-22720",
          "CVE-2016-8612",
          "CVE-2011-3368",
          "CVE-2014-3668",
          "CVE-2014-3669",
          "CVE-2014-9767",
          "CVE-2013-4635",
          "CVE-2010-4699",
          "CVE-2017-9788",
          "CVE-2015-9253",
          "CVE-2017-12933",
          "CVE-2018-14883",
          "CVE-2015-8835",
          "CVE-2015-4598",
          "CVE-2015-4599",
          "CVE-2015-4116",
          "CVE-2016-10712",
          "CVE-2015-8838",
          "CVE-2012-2336",
          "CVE-2016-10159",
          "CVE-2016-10158",
          "CVE-2016-9138",
          "CVE-2016-9137",
          "CVE-2016-10397",
          "CVE-2011-0421",
          "CVE-2022-22719",
          "CVE-2016-10161",
          "CVE-2016-9935",
          "CVE-2012-0831",
          "CVE-2017-9798",
          "CVE-2016-9934",
          "CVE-2011-0419",
          "CVE-2012-0031",
          "CVE-2015-4147",
          "CVE-2015-4026",
          "CVE-2011-0755",
          "CVE-2015-4148",
          "CVE-2011-0754",
          "CVE-2018-19520",
          "CVE-2011-0753",
          "CVE-2011-3348",
          "CVE-2011-4317",
          "CVE-2016-3141",
          "CVE-2016-3142",
          "CVE-2017-11145",
          "CVE-2013-7327",
          "CVE-2017-11142",
          "CVE-2017-11144",
          "CVE-2015-0228",
          "CVE-2017-11143",
          "CVE-2015-5590",
          "CVE-2015-4021",
          "CVE-2015-4022",
          "CVE-2015-8865",
          "CVE-2015-4024",
          "CVE-2013-5704",
          "CVE-2015-4025",
          "CVE-2015-5589",
          "CVE-2019-9637",
          "CVE-2014-4721",
          "CVE-2016-4342",
          "CVE-2016-4343",
          "CVE-2019-9639",
          "CVE-2019-9638",
          "CVE-2012-1823",
          "CVE-2014-3515",
          "CVE-2022-30556",
          "CVE-2012-0057",
          "CVE-2012-0053",
          "CVE-2017-7272",
          "CVE-2015-4600",
          "CVE-2011-3607",
          "CVE-2015-4601",
          "CVE-2019-9641",
          "CVE-2015-4602",
          "CVE-2021-39275",
          "CVE-2015-4603",
          "CVE-2015-4604",
          "CVE-2015-4605",
          "CVE-2014-3587",
          "CVE-2014-2497",
          "CVE-2009-4418",
          "CVE-2008-0455",
          "CVE-2014-4670",
          "CVE-2015-2787",
          "CVE-2012-3450",
          "CVE-2010-4657",
          "CVE-2015-2783",
          "CVE-2016-5094",
          "CVE-2015-8879",
          "CVE-2016-5093",
          "CVE-2015-8877",
          "CVE-2016-5096",
          "CVE-2016-5095",
          "CVE-2012-2376",
          "CVE-2015-3183",
          "CVE-2012-4558",
          "CVE-2012-4557",
          "CVE-2016-5773",
          "CVE-2016-5772",
          "CVE-2016-5771",
          "CVE-2016-5770",
          "CVE-2010-4409",
          "CVE-2017-16642",
          "CVE-2015-0231",
          "CVE-2022-31628",
          "CVE-2015-8994",
          "CVE-2015-8873",
          "CVE-2015-0232",
          "CVE-2022-31629",
          "CVE-2015-8874",
          "CVE-2015-1351",
          "CVE-2012-2143",
          "CVE-2016-6292",
          "CVE-2015-1352",
          "CVE-2016-6174",
          "CVE-2016-6295",
          "CVE-2012-2386",
          "CVE-2016-6294",
          "CVE-2016-6291",
          "CVE-2016-6290",
          "CVE-2011-3267",
          "CVE-2011-3268",
          "CVE-2016-6297",
          "CVE-2014-9427",
          "CVE-2016-6296",
          "CVE-2014-9426",
          "CVE-2016-5769",
          "CVE-2013-6438",
          "CVE-2014-9425",
          "CVE-2016-5768",
          "CVE-2012-0883",
          "CVE-2017-11628",
          "CVE-2012-1171",
          "CVE-2015-3412",
          "CVE-2012-1172",
          "CVE-2015-3411",
          "CVE-2022-28330",
          "CVE-2016-7130",
          "CVE-2016-7131",
          "CVE-2012-3365",
          "CVE-2016-4541",
          "CVE-2016-4540",
          "CVE-2016-6289",
          "CVE-2016-4543",
          "CVE-2016-4542",
          "CVE-2018-20783",
          "CVE-2016-7132",
          "CVE-2016-6288",
          "CVE-2014-9653",
          "CVE-2014-9652",
          "CVE-2011-1092",
          "CVE-2014-3670",
          "CVE-2015-4642",
          "CVE-2011-1469",
          "CVE-2015-4643",
          "CVE-2011-1468",
          "CVE-2015-4644",
          "CVE-2011-1467",
          "CVE-2012-3499",
          "CVE-2016-7127",
          "CVE-2018-17082",
          "CVE-2016-7128",
          "CVE-2016-7125",
          "CVE-2016-7126",
          "CVE-2011-1466",
          "CVE-2016-7124",
          "CVE-2011-1464",
          "CVE-2016-4538",
          "CVE-2016-4537",
          "CVE-2013-1643",
          "CVE-2016-4539",
          "CVE-2017-3167",
          "CVE-2022-29404",
          "CVE-2012-0789",
          "CVE-2012-0788",
          "CVE-2017-3169",
          "CVE-2016-7129",
          "CVE-2015-2348",
          "CVE-2015-0273",
          "CVE-2015-2331",
          "CVE-2021-44790",
          "CVE-2018-19396",
          "CVE-2018-19395",
          "CVE-2013-6420",
          "CVE-2011-1471",
          "CVE-2016-7478",
          "CVE-2011-1470",
          "CVE-2011-2202",
          "CVE-2014-9912",
          "CVE-2013-4248",
          "CVE-2010-1452",
          "CVE-2013-1896",
          "CVE-2014-8142",
          "CVE-2015-3307",
          "CVE-2017-7890",
          "CVE-2016-4070",
          "CVE-2011-4718",
          "CVE-2015-3330",
          "CVE-2014-0098",
          "CVE-2014-4698",
          "CVE-2014-3487",
          "CVE-2018-10546",
          "CVE-2013-1862",
          "CVE-2011-3182",
          "CVE-2014-3480",
          "CVE-2018-10545",
          "CVE-2018-10549",
          "CVE-2018-10548",
          "CVE-2018-10547",
          "CVE-2022-31813",
          "CVE-2015-6832",
          "CVE-2011-3639",
          "CVE-2015-6831",
          "CVE-2015-6834",
          "CVE-2015-6833",
          "CVE-2015-6836",
          "CVE-2015-7804",
          "CVE-2015-6835",
          "CVE-2015-7803",
          "CVE-2015-6838",
          "CVE-2015-6837",
          "CVE-2016-5399",
          "CVE-2014-3478",
          "CVE-2014-3597",
          "CVE-2014-3479",
          "CVE-2017-7679",
          "CVE-2014-2020",
          "CVE-2011-3192",
          "CVE-2015-3329",
          "CVE-2013-1635",
          "CVE-2018-1302",
          "CVE-2018-1301",
          "CVE-2018-1303"
        ],
        "cveDetails": [
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-2068",
            "description":
                " mod_proxy_http.c in mod_proxy_http in the Apache HTTP Server 2.2.9 through 2.2.15, 2.3.4-alpha, and 2.3.5-alpha on Windows, NetWare, and OS/2, in certain configurations involving proxy worker pools, does not properly detect timeouts, which allows remote attackers to obtain a potentially sensitive response intended for a different client in opportunistic circumstances via a normal HTTP request..",
            "vendors": ["apache", "ibm", "novell", "microsoft"],
            "products": ["http server", "netware", "windows", "os2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-2110",
            "description":
                " Heap-based buffer overflow in the php_quot_print_encode function in ext/standard/quot_print.c in PHP before 5.3.26 and 5.4.x before 5.4.16 allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a crafted argument to the quoted_printable_encode function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2018-10549",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. exif_read_data in ext/exif/exif.c has an out-of-bounds read for crafted JPEG data because exif_iif_add_value mishandles the case of a MakerNote that lacks a final '\\0' character..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-10548",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. ext/ldap/ldap.c allows remote LDAP servers to cause a denial of service (NULL pointer dereference and application crash) because of mishandling of the ldap_get_dn return value..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-3141",
            "description":
                " Use-after-free vulnerability in wddx.c in the WDDX extension in PHP before 5.5.33 and 5.6.x before 5.6.19 allows remote attackers to cause a denial of service (memory corruption and application crash) or possibly have unspecified other impact by triggering a wddx_deserialize call on XML data containing a crafted var element..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.7,
            "cveNo": "CVE-2018-10545",
            "description":
                " An issue was discovered in PHP before 5.6.35, 7.0.x before 7.0.29, 7.1.x before 7.1.16, and 7.2.x before 7.2.4. Dumpable FPM child processes allow bypassing opcache access controls because fpm_unix.c makes a PR_SET_DUMPABLE prctl call, allowing one user (in a multiuser environment) to obtain sensitive information from the process memory of a second user's PHP applications by running gcore on the PID of the PHP-FPM worker process..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-0118",
            "description":
                " The deflate_in_filter function in mod_deflate.c in the mod_deflate module in the Apache HTTP Server before 2.4.10, when request body decompression is enabled, allows remote attackers to cause a denial of service (resource consumption) via crafted request data that decompresses to a much larger size..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-10546",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. An infinite loop exists in ext/iconv/iconv.c because the iconv stream filter does not reject invalid multibyte sequences..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.4,
            "cveNo": "CVE-2017-7272",
            "description":
                " PHP through 7.1.11 enables potential SSRF in applications that accept an fsockopen or pfsockopen hostname argument with an expectation that the port number is constrained. Because a :port syntax is recognized, fsockopen will use the port number that is specified in the hostname argument, instead of the port number in the second argument of the function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-9798",
            "description":
                " Apache httpd allows remote attackers to read secret data from process memory if the Limit directive can be set in a user's .htaccess file, or if httpd.conf has certain misconfigurations, aka Optionsbleed. This affects the Apache HTTP Server through 2.2.34 and 2.4.x through 2.4.27. The attacker sends an unauthenticated OPTIONS HTTP request when attempting to read secret data. This is a use-after-free issue and thus secret data is not always sent, and the specific data depends on many factors including configuration. Exploitation with .htaccess can be blocked with a patch to the ap_limit_section function in server/core.c..",
            "vendors": ["apache", "debian"],
            "products": ["http server"],
            "exploits": [
              "webapps : Linux : 42745 Apache &lt; 2.2.34 / &lt; 2.4.27 - OPTIONS Memory Leak"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-0231",
            "description":
                " Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages improper handling of duplicate numerical keys within the serialized properties of an object.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2014-8142...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-0232",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/824.html\">CWE-824: Access of Uninitialized Pointer</a>..  The exif_process_unicode function in ext/exif/exif.c in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5 allows remote attackers to execute arbitrary code or cause a denial of service (uninitialized pointer free and application crash) via crafted EXIF data in a JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-3183",
            "description":
                " The chunked transfer coding implementation in the Apache HTTP Server before 2.4.14 does not properly parse chunk headers, which allows remote attackers to conduct HTTP request smuggling attacks via a crafted request, related to mishandling of large chunk-size values and invalid chunk-extension characters in modules/http/http_filters.c..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.4,
            "cveNo": "CVE-2011-2202",
            "description":
                " The rfc1867_post_handler function in main/rfc1867.c in PHP before 5.3.7 does not properly restrict filenames in multipart/form-data POST requests, which allows remote attackers to conduct absolute path traversal attacks, and possibly create or overwrite arbitrary files, via a crafted upload request, related to a \"file path injection vulnerability.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-4557",
            "description":
                " The mod_proxy_ajp module in the Apache HTTP Server 2.2.12 through 2.2.21 places a worker node into an error state upon detection of a long request-processing time, which allows remote attackers to cause a denial of service (worker consumption) via an expensive request..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.1,
            "cveNo": "CVE-2013-1862",
            "description":
                " mod_rewrite.c in the mod_rewrite module in the Apache HTTP Server 2.2.x before 2.2.25 writes data to a log file without sanitizing non-printable characters, which might allow remote attackers to execute arbitrary commands via an HTTP request containing an escape sequence for a terminal emulator..",
            "vendors": ["apache", "oracle", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2022-28330",
            "description":
                " Apache HTTP Server 2.4.53 and earlier on Windows may read beyond bounds when configured to process requests with the mod_isapi module..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-4248",
            "description":
                " The openssl_x509_parse function in openssl.c in the OpenSSL module in PHP before 5.4.18 and 5.5.x before 5.5.2 does not properly handle a '\\0' character in a domain name in the Subject Alternative Name field of an X.509 certificate, which allows man-in-the-middle attackers to spoof arbitrary SSL servers via a crafted certificate issued by a legitimate Certification Authority, a related issue to CVE-2009-2408..",
            "vendors": ["php", "canonical", "redhat"],
            "products": ["enterprise_linux", "php", "ubuntu_linux"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-8835",
            "description":
                " The make_http_soap_request function in ext/soap/php_http.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 does not properly retrieve keys, which allows remote attackers to cause a denial of service (NULL pointer dereference, type confusion, and application crash) or possibly execute arbitrary code via crafted serialized data representing a numerically indexed _cookies array, related to the SoapClient::__call method in ext/soap/soap.c...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7418",
            "description":
                " The php_wddx_push_element function in ext/wddx/wddx.c in PHP before 5.6.26 and 7.x before 7.0.11 allows remote attackers to cause a denial of service (invalid pointer access and out-of-bounds read) or possibly have unspecified other impact via an incorrect boolean element in a wddxPacket XML document, leading to mishandling in a wddx_deserialize call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-2311",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.13 and 5.4.x before 5.4.3, when configured as a CGI script (aka php-cgi), does not properly handle query strings that contain a %3D sequence but no = (equals sign) character, which allows remote attackers to execute arbitrary code by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'd' case.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1823..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7414",
            "description":
                " The ZIP signature-verification feature in PHP before 5.6.26 and 7.x before 7.0.11 does not ensure that the uncompressed_filesize field is large enough, which allows remote attackers to cause a denial of service (out-of-bounds memory access) or possibly have unspecified other impact via a crafted PHAR archive, related to ext/phar/util.c and ext/phar/zip.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7416",
            "description":
                " ext/intl/msgformat/msgformat_format.c in PHP before 5.6.26 and 7.x before 7.0.11 does not properly restrict the locale length provided to the Locale class in the ICU library, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a MessageFormatter::formatMessage call with a long first argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7417",
            "description":
                " ext/spl/spl_array.c in PHP before 5.6.26 and 7.x before 7.0.11 proceeds with SplArray unserialization without validating a return value and data type, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7411",
            "description":
                " ext/standard/var_unserializer.re in PHP before 5.6.26 mishandles object-deserialization failures, which allows remote attackers to cause a denial of service (memory corruption) or possibly have unspecified other impact via an unserialize call that references a partially constructed object..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-7412",
            "description":
                " ext/mysqlnd/mysqlnd_wireprotocol.c in PHP before 5.6.26 and 7.x before 7.0.11 does not verify that a BIT field has the UNSIGNED_FLAG flag, which allows remote MySQL servers to cause a denial of service (heap-based buffer overflow) or possibly have unspecified other impact via crafted field metadata..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7413",
            "description":
                " Use-after-free vulnerability in the wddx_stack_destroy function in ext/wddx/wddx.c in PHP before 5.6.26 and 7.x before 7.0.11 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a wddxPacket XML document that lacks an end-tag for a recordset field element, leading to mishandling in a wddx_deserialize call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1468",
            "description":
                " Multiple memory leaks in the OpenSSL extension in PHP before 5.3.6 might allow remote attackers to cause a denial of service (memory consumption) via (1) plaintext data to the openssl_encrypt function or (2) ciphertext data to the openssl_decrypt function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1469",
            "description":
                " Unspecified vulnerability in the Streams component in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) by accessing an ftp:// URL during use of an HTTP proxy with the FTP wrapper..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0421",
            "description":
                " Per: http://cwe.mitre.org/data/definitions/476.html\r\n'CWE-476: NULL Pointer Dereference'..  The _zip_name_locate function in zip_name_locate.c in the Zip extension in PHP before 5.3.6 does not properly handle a ZIPARCHIVE::FL_UNCHANGED argument, which might allow context-dependent attackers to cause a denial of service (NULL pointer dereference) via an empty ZIP archive that is processed with a (1) locateName or (2) statName operation..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2012-2688",
            "description":
                " Unspecified vulnerability in the _php_stream_scandir function in the stream implementation in PHP before 5.3.15 and 5.4.x before 5.4.5 has unknown impact and remote attack vectors, related to an \"overflow.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2012-2687",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the make_variant_list function in mod_negotiation.c in the mod_negotiation module in the Apache HTTP Server 2.4.x before 2.4.3, when the MultiViews option is enabled, allow remote attackers to inject arbitrary web script or HTML via a crafted filename that is not properly handled during construction of a variant list..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-1466",
            "description":
                " Integer overflow in the SdnToJulian function in the Calendar extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via a large integer in the first argument to the cal_from_jd function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-7679",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_mime can read one byte past the end of a buffer when sending a malicious Content-Type response header..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1464",
            "description":
                " Buffer overflow in the strval function in PHP before 5.3.6, when the precision configuration option has a large value, might allow context-dependent attackers to cause a denial of service (application crash) via a small numerical value in the argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3182",
            "description":
                " Per: http://cwe.mitre.org/data/definitions/476.html \r\n'CWE-476: NULL Pointer Dereference'..  PHP before 5.3.7 does not properly check the return values of the malloc, calloc, and realloc library functions, which allows context-dependent attackers to cause a denial of service (NULL pointer dereference and application crash) or trigger a buffer overflow by leveraging the ability to provide an arbitrary value for a function argument, related to (1) ext/curl/interface.c, (2) ext/date/lib/parse_date.c, (3) ext/date/lib/parse_iso_intervals.c, (4) ext/date/lib/parse_tz.c, (5) ext/date/lib/timelib.c, (6) ext/pdo_odbc/pdo_odbc.c, (7) ext/reflection/php_reflection.c, (8) ext/soap/php_sdl.c, (9) ext/xmlrpc/libxmlrpc/base64.c, (10) TSRM/tsrm_win32.c, and (11) the strtotime function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4148",
            "description":
                " The do_soap_call function in ext/soap/soap.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 does not verify that the uri property is a string, which allows remote attackers to obtain sensitive information by providing crafted serialized data with an int data type, related to a \"type confusion\" issue..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5773",
            "description":
                " php_zip.c in the zip extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to execute arbitrary code or cause a denial of service (use-after-free and application crash) via crafted serialized data containing a ZipArchive object..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2022-31813",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may not send the X-Forwarded-* headers to the origin server based on client side Connection header hop-by-hop mechanism. This may be used to bypass IP based authentication on the origin server/application..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5771",
            "description":
                " spl_array.c in the SPL extension in PHP before 5.5.37 and 5.6.x before 5.6.23 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to execute arbitrary code or cause a denial of service (use-after-free and application crash) via crafted serialized data..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5770",
            "description":
                " Integer overflow in the SplFileObject::fread function in spl_directory.c in the SPL extension in PHP before 5.5.37 and 5.6.x before 5.6.23 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large integer argument, a related issue to CVE-2016-5096..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2015-8935",
            "description":
                " The sapi_header_op function in main/SAPI.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 supports deprecated line folding without considering browser compatibility, which allows remote attackers to conduct cross-site scripting (XSS) attacks against Internet Explorer by leveraging (1) %0A%20 or (2) %0D%0A%20 mishandling in the header function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-20783",
            "description":
                " In PHP before 5.6.39, 7.x before 7.0.33, 7.1.x before 7.1.25, and 7.2.x before 7.2.13, a buffer over-read in PHAR reading functions may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse a .phar file. This is related to phar_parse_pharfile in ext/phar/phar.c..",
            "vendors": ["opensuse", "php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4147",
            "description":
                " The SoapClient::__call method in ext/soap/soap.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 does not verify that __default_headers is an array, which allows remote attackers to execute arbitrary code by providing crafted serialized data with an unexpected data type, related to a \"type confusion\" issue..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.4,
            "cveNo": "CVE-2012-0057",
            "description":
                " PHP before 5.3.9 has improper libxslt security settings, which allows remote attackers to create arbitrary files via a crafted XSLT stylesheet that uses the libxslt output extension..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-3167",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, use of the ap_get_basic_auth_pw() by third-party modules outside of the authentication phase may lead to authentication requirements being bypassed..",
            "vendors": [
              "apple",
              "apache",
              "oracle",
              "debian",
              "redhat",
              "netapp"
            ],
            "products": [
              "http server",
              "oncommand unified manager",
              "storagegrid",
              "secure global desktop",
              "jboss core services",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-0053",
            "description":
                " protocol.c in the Apache HTTP Server 2.2.x through 2.2.21 does not properly restrict header information during construction of Bad Request (aka 400) error documents, which allows remote attackers to obtain the values of HTTPOnly cookies via vectors involving a (1) long or (2) malformed header in conjunction with crafted web script..",
            "vendors": ["apache", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "storage"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.9,
            "cveNo": "CVE-2012-0883",
            "description":
                " envvars (aka envvars-std) in the Apache HTTP Server before 2.4.2 places a zero-length directory name in the LD_LIBRARY_PATH, which allows local users to gain privileges via a Trojan horse DSO in the current working directory during execution of apachectl..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-3169",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_ssl may dereference a NULL pointer when third-party modules call ap_hook_process_connection() during an HTTP request to an HTTPS port..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-4070",
            "description":
                " ** DISPUTED ** Integer overflow in the php_raw_url_encode function in ext/standard/url.c in PHP before 5.5.34, 5.6.x before 5.6.20, and 7.x before 7.0.5 allows remote attackers to cause a denial of service (application crash) via a long string to the rawurlencode function. NOTE: the vendor says \"Not sure if this qualifies as security issue (probably not).\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4024",
            "description":
                " Algorithmic complexity vulnerability in the multipart_buffer_headers function in main/rfc1867.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 allows remote attackers to cause a denial of service (CPU consumption) via crafted form data that triggers an improper order-of-growth outcome..",
            "vendors": ["apple", "oracle", "hp", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "linux",
              "php",
              "system_management_homepage",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2021-44790",
            "description":
                " A carefully crafted request body can cause a buffer overflow in the mod_lua multipart parser (r:parsebody() called from Lua scripts). The Apache httpd team is not aware of an exploit for the vulnerabilty though it might be possible to craft one. This issue affects Apache HTTP Server 2.4.51 and earlier..",
            "vendors": ["tenable", "apache", "oracle", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "communications operations monitor",
              "cloud backup",
              "instantis enterprisetrack",
              "tenable sc",
              "communications session route manager",
              "communications element manager",
              "communications session report manager"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.5,
            "cveNo": "CVE-2018-14851",
            "description":
                " exif_process_IFD_in_MAKERNOTE in ext/exif/exif.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8 allows remote attackers to cause a denial of service (out-of-bounds read and application crash) via a crafted JPEG file..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-3639",
            "description":
                " The mod_proxy module in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x before 2.2.18, when the Revision 1179239 patch is in place, does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers by using the HTTP/0.9 protocol with a malformed URI containing an initial @ (at sign) character.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2011-3368..",
            "vendors": ["apache"],
            "products": [
              "http_server2.0a1",
              "http_server2.0a2",
              "http_server2.0a5",
              "http_server2.0a6",
              "http_server2.0a3",
              "http_server2.0a4",
              "http_server2.0a9",
              "http_server2.0a7",
              "http_server2.0a8",
              "http_server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2013-1635",
            "description":
                " ext/soap/soap.c in PHP before 5.3.22 and 5.4.x before 5.4.13 does not validate the relationship between the soap.wsdl_cache_dir directive and the open_basedir directive, which allows remote attackers to bypass intended access restrictions by triggering the creation of cached SOAP WSDL files in an arbitrary directory..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0231",
            "description":
                " The mod_cgid module in the Apache HTTP Server before 2.4.10 does not have a timeout mechanism, which allows remote attackers to cause a denial of service (process hang) via a request to a CGI script that does not read from its stdin file descriptor..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2016-4975",
            "description":
                " Possible CRLF injection allowing HTTP response splitting attacks for sites which use mod_userdir. This issue was mitigated by changes made in 2.4.25 and 2.2.32 which prohibit CR or LF injection into the \"Location\" or other outbound header key or value. Fixed in Apache HTTP Server 2.4.25 (Affected 2.4.1-2.4.23). Fixed in Apache HTTP Server 2.2.32 (Affected 2.2.0-2.2.31)..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-1824",
            "description":
                " The SOAP parser in PHP before 5.3.22 and 5.4.x before 5.4.12 allows remote attackers to read arbitrary files via a SOAP WSDL file containing an XML external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue in the soap_xmlParseFile and soap_xmlParseMemory functions..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2012-0031",
            "description":
                " scoreboard.c in the Apache HTTP Server 2.2.21 and earlier might allow local users to cause a denial of service (daemon crash during shutdown) or possibly have unspecified other impact by modifying a certain type field within a scoreboard shared memory segment, leading to an invalid call to the free function..",
            "vendors": ["apache", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "storage"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2013-6501",
            "description":
                " The default soap.wsdl_cache_dir setting in (1) php.ini-production and (2) php.ini-development in PHP through 5.6.7 specifies the /tmp directory, which makes it easier for local users to conduct WSDL injection attacks by creating a file under /tmp with a predictable filename that is used by the get_sdl function in ext/soap/php_sdl.c..",
            "vendors": ["suse", "php"],
            "products": ["linux_enterprise_server", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-8865",
            "description":
                " The file_check_mem function in funcs.c in file before 5.23, as used in the Fileinfo component in PHP before 5.5.34, 5.6.x before 5.6.20, and 7.x before 7.0.5, mishandles continuation-level jumps, which allows context-dependent attackers to cause a denial of service (buffer overflow and application crash) or possibly execute arbitrary code via a crafted magic file..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2013-6420",
            "description":
                " The asn1_time_to_time_t function in ext/openssl/openssl.c in PHP before 5.3.28, 5.4.x before 5.4.23, and 5.5.x before 5.5.7 does not properly parse (1) notBefore and (2) notAfter timestamps in X.509 certificates, which allows remote attackers to execute arbitrary code or cause a denial of service (memory corruption) via a crafted certificate that is not properly handled by the openssl_x509_parse function..",
            "vendors": ["apple", "opensuse", "php"],
            "products": ["mac_os_x", "opensuse", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3487",
            "description":
                " The cdf_read_property_info function in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, does not properly validate a stream offset, which allows remote attackers to cause a denial of service (application crash) via a crafted CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-22719",
            "description":
                " A carefully crafted request body can cause a read to a random memory area which could cause the process to crash. This issue affects Apache HTTP Server 2.4.52 and earlier..",
            "vendors": ["apache", "oracle"],
            "products": ["zfs storage appliance kit", "http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-6174",
            "description":
                " applications/core/modules/front/system/content.php in Invision Power Services IPS Community Suite (aka Invision Power Board, IPB, or Power Board) before 4.1.13, when used with PHP before 5.4.24 or 5.5.x before 5.5.8, allows remote attackers to execute arbitrary code via the content_class parameter..",
            "vendors": ["invisioncommunity", "php"],
            "products": ["invision_power_board", "php"],
            "exploits": [
              "WebApps : PHP : IPS Community Suite 4.1.12.3 - PHP Code Injection"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9138",
            "description":
                " PHP through 5.6.27 and 7.x through 7.0.12 mishandles property modification during __wakeup processing, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data, as demonstrated by Exception::__toString with DateInterval::__wakeup..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.5,
            "cveNo": "CVE-2022-31628",
            "description":
                " In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the phar uncompressor code would recursively uncompress \"quines\" gzip files, resulting in an infinite loop..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2022-31629",
            "description":
                " In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the vulnerability enables network and same-site attackers to set a standard insecure cookie in the victim's browser which is treated as a `__Host-` or `__Secure-` cookie by PHP applications..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5768",
            "description":
                " Double free vulnerability in the _php_mb_regex_ereg_replace_exec function in php_mbregex.c in the mbstring extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allows remote attackers to execute arbitrary code or cause a denial of service (application crash) by leveraging a callback exception..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.8,
            "cveNo": "CVE-2015-2783",
            "description":
                " ext/phar/phar.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (buffer over-read and application crash) via a crafted length value in conjunction with crafted serialized data in a phar archive, related to the phar_parse_metadata and phar_parse_pharfile functions..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9137",
            "description":
                " Use-after-free vulnerability in the CURLFile implementation in ext/curl/curl_file.c in PHP before 5.6.27 and 7.x before 7.0.12 allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data that is mishandled during __wakeup processing..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-2020",
            "description":
                " ext/gd/gd.c in PHP 5.5.x before 5.5.9 does not check data types, which might allow remote attackers to obtain sensitive information by using a (1) string or (2) array data type in place of a numeric data type, as demonstrated by an imagecrop function call with a string for the x dimension value, a different vulnerability than CVE-2013-7226..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2011-1939",
            "description":
                " SQL injection vulnerability in Zend Framework 1.10.x before 1.10.9 and 1.11.x before 1.11.6 when using non-ASCII-compatible encodings in conjunction PDO_MySql in PHP before 5.3.6..",
            "vendors": ["debian", "zend", "php"],
            "products": ["debian_linux", "php", "zend_framework"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-2787",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages use of the unset function within an __wakeup function, a related issue to CVE-2015-0231..",
            "vendors": ["apple", "opensuse", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "opensuse",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2021-34798",
            "description":
                " Malformed requests may cause the server to dereference a NULL pointer. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["tenable", "apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "ruggedcom nms",
              "communications cloud native core network function cloud native environment",
              "http server",
              "cloud backup",
              "peoplesoft enterprise peopletools",
              "sinec nms",
              "clustered data ontap",
              "storagegrid",
              "sinema server",
              "instantis enterprisetrack",
              "tenable sc",
              "enterprise manager base platform",
              "sinema remote connect server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6831",
            "description":
                " Multiple use-after-free vulnerabilities in SPL in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allow remote attackers to execute arbitrary code via vectors involving (1) ArrayObject, (2) SplObjectStorage, and (3) SplDoublyLinkedList, which are mishandled during unserialization..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6832",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the SPL unserialize implementation in ext/spl/spl_array.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to execute arbitrary code via crafted serialized data that triggers misuse of an array field..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6833",
            "description":
                " Directory traversal vulnerability in the PharData class in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to write to arbitrary files via a .. (dot dot) in a ZIP archive entry that is mishandled during an extractTo call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-6834",
            "description":
                " Multiple use-after-free vulnerabilities in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 allow remote attackers to execute arbitrary code via vectors related to (1) the Serializable interface, (2) the SplObjectStorage class, and (3) the SplDoublyLinkedList class, which are mishandled during unserialization...  <a href=\"http://cwe.mitre.org/data/definitions/502.html\">CWE-502: Deserialization of Untrusted Data</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-6835",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  The session deserializer in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 mishandles multiple php_var_unserialize calls, which allow remote attackers to execute arbitrary code or cause a denial of service (use-after-free) via crafted session content..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-4885",
            "description":
                " PHP before 5.3.9 computes hash values for form parameters without restricting the ability to trigger hash collisions predictably, which allows remote attackers to cause a denial of service (CPU consumption) by sending many crafted parameters..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 18305 PHP Hash Table Collision - Denial of Service (PoC)"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6837",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The xsl_ext_function_php function in ext/xsl/xsltprocessor.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13, when libxml2 before 2.9.2 is used, does not consider the possibility of a NULL valuePop return value before proceeding with a free operation during initial error checking, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted XML document, a different vulnerability than CVE-2015-6838..",
            "vendors": ["xmlsoft", "php"],
            "products": ["php", "libxml2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6838",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The xsl_ext_function_php function in ext/xsl/xsltprocessor.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13, when libxml2 before 2.9.2 is used, does not consider the possibility of a NULL valuePop return value before proceeding with a free operation after the principal argument loop, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted XML document, a different vulnerability than CVE-2015-6837..",
            "vendors": ["xmlsoft", "php"],
            "products": ["php", "libxml2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-3348",
            "description":
                " The mod_proxy_ajp module in the Apache HTTP Server before 2.2.21, when used with mod_proxy_balancer in certain configurations, allows remote attackers to cause a denial of service (temporary \"error state\" in the backend server) via a malformed HTTP request..",
            "vendors": ["apache", "redhat"],
            "products": ["jboss enterprise web server", "http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9935",
            "description":
                " The php_wddx_push_element function in ext/wddx/wddx.c in PHP before 5.6.29 and 7.x before 7.0.14 allows remote attackers to cause a denial of service (out-of-bounds read and memory corruption) or possibly have unspecified other impact via an empty boolean element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-19396",
            "description":
                " ext/standard/var_unserializer.c in PHP 5.x through 7.1.24 allows attackers to cause a denial of service (application crash) via an unserialize call for the com, dotnet, or variant class..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11143",
            "description":
                " In PHP before 5.6.31, an invalid free in the WDDX deserialization of boolean parameters could be used by attackers able to inject XML for deserialization to crash the PHP interpreter, related to an invalid free for an empty boolean element in ext/wddx/wddx.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2017-7890",
            "description":
                " The GIF decoding function gdImageCreateFromGifCtx in gd_gif_in.c in the GD Graphics Library (aka libgd), as used in PHP before 5.6.31 and 7.x before 7.1.7, does not zero colorMap arrays before use. A specially crafted GIF image could use the uninitialized tables to read ~700 bytes from the top of the stack, potentially disclosing sensitive information..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11145",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, an error in the date extension's timelib_meridian parsing code could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: the correct fix is in the e8b7698f5ee757ce2c8bd10a192a491a498f891c commit, not the bd77ac90d3bdf31ce2a5251ad92e9e75 gist..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11144",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, the openssl extension PEM sealing code did not check the return value of the OpenSSL sealing function, which could lead to a crash of the PHP interpreter, related to an interpretation conflict for a negative number in ext/openssl/openssl.c, and an OpenSSL documentation omission..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-2143",
            "description":
                " As per: http://git.php.net/?p=php-src.git;a=commitdiff;h=aab49e934de1fff046e659cbec46e3d053b41c34 and http://git.php.net/?p=php-src.git;a=commitdiff_plain;h=aab49e934de1fff046e659cbec46e3d053b41c34\r\n\r\nPHP 5.3.13 and earlier are vulnerable.\r\n..  The crypt_des (aka DES-based crypt) function in FreeBSD before 9.0-RELEASE-p2, as used in PHP, PostgreSQL, and other products, does not process the complete cleartext password if this password contains a 0x80 character, which makes it easier for context-dependent attackers to obtain access via an authentication attempt with an initial substring of the intended password, as demonstrated by a Unicode password..",
            "vendors": ["postgresql", "freebsd", "php"],
            "products": ["postgresql", "freebsd", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-1171",
            "description":
                " The libxml RSHUTDOWN function in PHP 5.x allows remote attackers to bypass the open_basedir protection mechanism and read arbitrary files via vectors involving a stream_close method call during use of a custom stream wrapper..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-0207",
            "description":
                " The cdf_read_short_sector function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, allows remote attackers to cause a denial of service (assertion failure and application exit) via a crafted CDF file..",
            "vendors": ["christos zoulas", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2012-0831",
            "description":
                " PHP before 5.3.10 does not properly perform a temporary change to the magic_quotes_gpc directive during the importing of environment variables, which makes it easier for remote attackers to conduct SQL injection attacks via a crafted request, related to main/php_variables.c, sapi/cgi/cgi_main.c, and sapi/fpm/fpm/fpm_main.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2018-17082",
            "description":
                " The Apache2 component in PHP before 5.6.38, 7.0.x before 7.0.32, 7.1.x before 7.1.22, and 7.2.x before 7.2.10 allows XSS via the body of a \"Transfer-Encoding: chunked\" request, because the bucket brigade is mishandled in the php_handler function in sapi/apache2handler/sapi_apache2.c..",
            "vendors": ["debian", "php", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-5704",
            "description":
                " The mod_headers module in the Apache HTTP Server 2.2.22 allows remote attackers to bypass \"RequestHeader unset\" directives by placing a header in the trailer portion of data sent with chunked transfer coding.  NOTE: the vendor states \"this is not a security issue in httpd as such.\".",
            "vendors": ["apple", "apache", "oracle", "canonical", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9639",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the data_len variable..",
            "vendors": [
              "debian",
              "opensuse",
              "php",
              "canonical",
              "redhat",
              "netapp"
            ],
            "products": [
              "storage automation store",
              "php",
              "software collections"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9638",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the maker_note->offset relationship to value_len..",
            "vendors": [
              "debian",
              "opensuse",
              "php",
              "canonical",
              "redhat",
              "netapp"
            ],
            "products": [
              "storage automation store",
              "php",
              "software collections"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-4409",
            "description":
                " Integer overflow in the NumberFormatter::getSymbol (aka numfmt_get_symbol) function in PHP 5.3.3 and earlier allows context-dependent attackers to cause a denial of service (application crash) via an invalid argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-6438",
            "description":
                " The dav_xml_get_cdata function in main/util.c in the mod_dav module in the Apache HTTP Server before 2.4.8 does not properly remove whitespace characters from CDATA sections, which allows remote attackers to cause a denial of service (daemon crash) via a crafted DAV WRITE request..",
            "vendors": ["apache", "oracle"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2016-1903",
            "description":
                " The gdImageRotateInterpolated function in ext/gd/libgd/gd_interpolation.c in PHP before 5.5.31, 5.6.x before 5.6.17, and 7.x before 7.0.2 allows remote attackers to obtain sensitive information or cause a denial of service (out-of-bounds read and application crash) via a large bgd_color argument to the imagerotate function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2013-7327",
            "description":
                " The gdImageCrop function in ext/gd/gd.c in PHP 5.5.x before 5.5.9 does not check return values, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via invalid imagecrop arguments that lead to use of a NULL pointer as a return value, a different vulnerability than CVE-2013-7226..",
            "vendors": ["php", "canonical"],
            "products": ["php", "ubuntu_linux"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-0273",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Multiple use-after-free vulnerabilities in ext/date/php_date.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 allow remote attackers to execute arbitrary code via crafted serialized input containing a (1) R or (2) r type specifier in (a) DateTimeZone data handled by the php_date_timezone_initialize_from_hash function or (b) DateTime data handled by the php_date_initialize_from_hash function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9637",
            "description":
                " An issue was discovered in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. Due to the way rename() across filesystems is implemented, it is possible that file being renamed is briefly available with wrong permissions while the rename is ongoing, thus enabling unauthorized users to access the data..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-4558",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the balancer_handler function in the manager interface in mod_proxy_balancer.c in the mod_proxy_balancer module in the Apache HTTP Server 2.2.x before 2.2.24-dev and 2.4.x before 2.4.4 allow remote attackers to inject arbitrary web script or HTML via a crafted string..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4602",
            "description":
                " The __PHP_Incomplete_Class function in ext/standard/incomplete_class.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 1.2,
            "cveNo": "CVE-2011-4415",
            "description":
                " The ap_pregsub function in server/util.c in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x through 2.2.21, when the mod_setenvif module is enabled, does not restrict the size of values of environment variables, which allows local users to cause a denial of service (memory consumption or NULL pointer dereference) via a .htaccess file with a crafted SetEnvIf directive, in conjunction with a crafted HTTP request header, related to (1) the \"len +=\" statement and (2) the apr_pcalloc function call, a different vulnerability than CVE-2011-3607..",
            "vendors": ["apache"],
            "products": ["http_server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4601",
            "description":
                " PHP before 5.6.7 might allow remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to \"type confusion\" issues in (1) ext/soap/php_encoding.c, (2) ext/soap/php_http.c, and (3) ext/soap/soap.c, a different issue than CVE-2015-4600...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4600",
            "description":
                " The SoapClient implementation in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to \"type confusion\" issues in the (1) SoapClient::__getLastRequest, (2) SoapClient::__getLastResponse, (3) SoapClient::__getLastRequestHeaders, (4) SoapClient::__getLastResponseHeaders, (5) SoapClient::__getCookies, and (6) SoapClient::__setCookie methods...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4603",
            "description":
                " The exception::getTraceAsString function in Zend/zend_exceptions.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-14883",
            "description":
                " An issue was discovered in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. An Integer Overflow leads to a heap-based buffer over-read in exif_thumbnail_extract of exif.c..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4605",
            "description":
                " The mcopy function in softmagic.c in file 5.x, as used in the Fileinfo component in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, does not properly restrict a certain offset value, which allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted string that is mishandled by a \"Python script text executable\" rule..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1153",
            "description":
                " Multiple format string vulnerabilities in phar_object.c in the phar extension in PHP 5.3.5 and earlier allow context-dependent attackers to obtain sensitive information from process memory, cause a denial of service (memory corruption), or possibly execute arbitrary code via format string specifiers in an argument to a class method, leading to an incorrect zend_throw_exception_ex call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-1452",
            "description":
                " The (1) mod_cache and (2) mod_dav modules in the Apache HTTP Server 2.2.x before 2.2.16 allow remote attackers to cause a denial of service (process crash) via a request that lacks a path..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4604",
            "description":
                " The mget function in softmagic.c in file 5.x, as used in the Fileinfo component in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, does not properly maintain a certain pointer relationship, which allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted string that is mishandled by a \"Python script text executable\" rule..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.4,
            "cveNo": "CVE-2011-3607",
            "description":
                " Integer overflow in the ap_pregsub function in server/util.c in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x through 2.2.21, when the mod_setenvif module is enabled, allows local users to gain privileges via a .htaccess file with a crafted SetEnvIf directive, in conjunction with a crafted HTTP request header, leading to a heap-based buffer overflow..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-3597",
            "description":
                " Multiple buffer overflows in the php_parserr function in ext/standard/dns.c in PHP before 5.4.32 and 5.5.x before 5.5.16 allow remote DNS servers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted DNS record, related to the dns_get_record function and the dn_expand function.  NOTE: this issue exists because of an incomplete fix for CVE-2014-4049..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2012-3450",
            "description":
                " pdo_sql_parser.re in the PDO extension in PHP before 5.3.14 and 5.4.x before 5.4.4 does not properly determine the end of the query string during parsing of prepared statements, which allows remote attackers to cause a denial of service (out-of-bounds read and application crash) via a crafted parameter value..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2016-5114",
            "description":
                " sapi/fpm/fpm/fpm_log.c in PHP before 5.5.31, 5.6.x before 5.6.17, and 7.x before 7.0.2 misinterprets the semantics of the snprintf return value, which allows attackers to obtain sensitive information from process memory or cause a denial of service (out-of-bounds read and buffer overflow) via a long string, as demonstrated by a long URI in a configuration with custom REQUEST_URI logging..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2014-4670",
            "description":
                " Use-after-free vulnerability in ext/spl/spl_dllist.c in the SPL component in PHP through 5.5.14 allows context-dependent attackers to cause a denial of service or possibly have unspecified other impact via crafted iterator usage within applications in certain web-hosting environments...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\" target=\"_blank\">CWE-416: Use After Free</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-1467",
            "description":
                " Unspecified vulnerability in the NumberFormatter::setSymbol (aka numfmt_set_symbol) function in the Intl extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via an invalid argument, a related issue to CVE-2010-4409..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1092",
            "description":
                " Integer overflow in ext/shmop/shmop.c in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (crash) and possibly read sensitive memory via a large third argument to the shmop_read function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : Linux : 16966 PHP 5.3.6 - &#039;shmop_read()&#039; Integer Overflow Denial of Service"
            ]
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0237",
            "description":
                " The cdf_unpack_summary_info function in cdf.c in the Fileinfo component in PHP before 5.4.29 and 5.5.x before 5.5.13 allows remote attackers to cause a denial of service (performance degradation) by triggering many file_printf calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-0236",
            "description":
                " file before 5.18, as used in the Fileinfo component in PHP before 5.6.0, allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a zero root_storage value in a CDF file, related to cdf.c and readcdf.c...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-9652",
            "description":
                " The mconvert function in softmagic.c in file before 5.21, as used in the Fileinfo component in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5, does not properly handle a certain string-length field during a copy of a truncated version of a Pascal string, which might allow remote attackers to cause a denial of service (out-of-bounds memory access and application crash) via a crafted file..",
            "vendors": ["file_project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0419",
            "description":
                " Stack consumption vulnerability in the fnmatch implementation in apr_fnmatch.c in the Apache Portable Runtime (APR) library before 1.4.3 and the Apache HTTP Server before 2.2.18, and in fnmatch.c in libc in NetBSD 5.1, OpenBSD 4.8, FreeBSD, Apple Mac OS X 10.6, Oracle Solaris 10, and Android, allows context-dependent attackers to cause a denial of service (CPU and memory consumption) via *? sequences in the first argument, as demonstrated by attacks against mod_autoindex in httpd..",
            "vendors": ["apache"],
            "products": ["http server", "portable runtime"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5094",
            "description":
                " Integer overflow in the php_html_entities function in ext/standard/html.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact by triggering a large output string from the htmlspecialchars function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-8142",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.36, 5.5.x before 5.5.20, and 5.6.x before 5.6.4 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages improper handling of duplicate keys within the serialized properties of an object, a different vulnerability than CVE-2004-1019..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4543",
            "description":
                " The exif_process_IFD_in_JPEG function in ext/exif/exif.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 does not validate IFD sizes, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via crafted header data..",
            "vendors": ["fedoraproject", "opensuse", "hp", "php"],
            "products": ["fedora", "system_management_homepage", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4542",
            "description":
                " The exif_process_IFD_TAG function in ext/exif/exif.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 does not properly construct spprintf arguments, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via crafted header data..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4541",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/125.html\">CWE-125: Out-of-bounds Read</a>..  The grapheme_strpos function in ext/intl/grapheme/grapheme_string.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a negative offset..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4540",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/125.html\">CWE-125: Out-of-bounds Read</a>..  The grapheme_stripos function in ext/intl/grapheme/grapheme_string.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a negative offset..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-7963",
            "description":
                " ** DISPUTED ** The GNU Multiple Precision Arithmetic Library (GMP) interfaces for PHP through 7.1.4 allow attackers to cause a denial of service (memory consumption and application crash) via operations on long strings. NOTE: the vendor disputes this, stating \"There is no security issue here, because GMP safely aborts in case of an OOM condition. The only attack vector here is denial of service. However, if you allow attacker-controlled, unbounded allocations you have a DoS vector regardless of GMP's OOM behavior.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-3515",
            "description":
                " The SPL component in PHP before 5.4.30 and 5.5.x before 5.5.14 incorrectly anticipates that certain data structures will have the array data type after unserialization, which allows remote attackers to execute arbitrary code via a crafted string that triggers use of a Hashtable destructor, related to \"type confusion\" issues in (1) ArrayObject and (2) SPLObjectStorage..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0238",
            "description":
                " The cdf_read_property_info function in cdf.c in the Fileinfo component in PHP before 5.4.29 and 5.5.x before 5.5.13 allows remote attackers to cause a denial of service (infinite loop or out-of-bounds memory access) via a vector that (1) has zero length or (2) is too long..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2016-5399",
            "description":
                " The bzread function in ext/bz2/bz2.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (out-of-bounds write) or execute arbitrary code via a crafted bz2 archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 40155 PHP 5.5.37/5.6.23/7.0.8 - &#039;bzread()&#039; Out-of-Bounds Write"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9023",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A number of heap-based buffer over-read instances are present in mbstring regular expression functions when supplied with invalid multibyte data. These occur in ext/mbstring/oniguruma/regcomp.c, ext/mbstring/oniguruma/regexec.c, ext/mbstring/oniguruma/regparse.c, ext/mbstring/oniguruma/enc/unicode.c, and ext/mbstring/oniguruma/src/utf32_be.c when a multibyte regular expression pattern contains invalid multibyte sequences..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9020",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. Invalid input to the function xmlrpc_decode() can lead to an invalid memory access (heap out of bounds read or read after free). This is related to xml_elem_parse_buf in ext/xmlrpc/libxmlrpc/xml_element.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9021",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A heap-based buffer over-read in PHAR reading functions in the PHAR extension may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse the file name, a different vulnerability than CVE-2018-20783. This is related to phar_detect_phar_fname_ext in ext/phar/phar.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9024",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. xmlrpc_decode() can allow a hostile XMLRPC server to cause PHP to read memory outside of allocated areas in base64_decode_xmlrpc in ext/xmlrpc/libxmlrpc/base64.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-1643",
            "description":
                " The SOAP parser in PHP before 5.3.23 and 5.4.x before 5.4.13 allows remote attackers to read arbitrary files via a SOAP WSDL file containing an XML external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue in the soap_xmlParseFile and soap_xmlParseMemory functions.  NOTE: this vulnerability exists because of an incorrect fix for CVE-2013-1824..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-2497",
            "description":
                " The gdImageCreateFromXpm function in gdxpm.c in libgd, as used in PHP 5.4.26 and earlier, allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted color table in an XPM file..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2011-3192",
            "description":
                " The byterange filter in the Apache HTTP Server 1.3.x, 2.0.x through 2.0.64, and 2.2.x through 2.2.19 allows remote attackers to cause a denial of service (memory and CPU consumption) via a Range header that expresses multiple overlapping ranges, as exploited in the wild in August 2011, a different vulnerability than CVE-2007-0086..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2021-39275",
            "description":
                " ap_escape_quotes() may write beyond the end of a buffer when given malicious input. No included modules pass untrusted data to these functions, but third-party / external modules may. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "storagegrid",
              "sinema server",
              "cloud backup",
              "instantis enterprisetrack",
              "sinec nms",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6291",
            "description":
                " The exif_process_IFD_in_MAKERNOTE function in ext/exif/exif.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (out-of-bounds array access and memory corruption), obtain sensitive information from process memory, or possibly have unspecified other impact via a crafted JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6290",
            "description":
                " ext/session/session.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 does not properly maintain a certain hash data structure, which allows remote attackers to cause a denial of service (use-after-free) or possibly have unspecified other impact via vectors related to session deserialization..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2016-6292",
            "description":
                " The exif_process_user_comment function in ext/exif/exif.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6295",
            "description":
                " ext/snmp/snmp.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to cause a denial of service (use-after-free and application crash) or possibly have unspecified other impact via crafted serialized data, a related issue to CVE-2016-5773..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6294",
            "description":
                " The locale_accept_from_http function in ext/intl/locale/locale_methods.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 does not properly restrict calls to the ICU uloc_acceptLanguageFromHTTP function, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a call with a long argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-6297",
            "description":
                " Integer overflow in the php_stream_zip_opener function in ext/zip/zip_stream.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (stack-based buffer overflow) or possibly have unspecified other impact via a crafted zip:// URL..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6296",
            "description":
                " Integer signedness error in the simplestring_addn function in simplestring.c in xmlrpc-epi through 0.54.2, as used in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9, allows remote attackers to cause a denial of service (heap-based buffer overflow) or possibly have unspecified other impact via a long first argument to the PHP xmlrpc_encode_request function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3587",
            "description":
                " Integer overflow in the cdf_read_property_info function in cdf.c in file through 5.19, as used in the Fileinfo component in PHP before 5.4.32 and 5.5.x before 5.5.16, allows remote attackers to cause a denial of service (application crash) via a crafted CDF file.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1571..",
            "vendors": ["php", "christos_zoulas"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-1351",
            "description":
                " Use-after-free vulnerability in the _zend_shared_memdup function in zend_shared_alloc.c in the OPcache extension in PHP through 5.6.7 allows remote attackers to cause a denial of service or possibly have unspecified other impact via unknown vectors..",
            "vendors": ["oracle", "php"],
            "products": ["secure backup", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-1352",
            "description":
                " The build_tablename function in pgsql.c in the PostgreSQL (aka pgsql) extension in PHP through 5.6.7 does not validate token extraction for table names, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted name...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\" rel=\"nofollow\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2009-4418",
            "description":
                " The unserialize function in PHP 5.3.0 and earlier allows context-dependent attackers to cause a denial of service (resource consumption) via a deeply nested serialized variable, as demonstrated by a string beginning with a:1: followed by many {a:1: sequences..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4116",
            "description":
                " Use-after-free vulnerability in the spl_ptr_heap_insert function in ext/spl/spl_heap.c in PHP before 5.5.27 and 5.6.x before 5.6.11 allows remote attackers to execute arbitrary code by triggering a failed SplMinHeap::compare operation...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE 416: Use After Free</a>.",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1398",
            "description":
                " The sapi_header_op function in main/SAPI.c in PHP before 5.3.11 and 5.4.x before 5.4.0RC2 does not check for %0D sequences (aka carriage return characters), which allows remote attackers to bypass an HTTP response-splitting protection mechanism via a crafted URL, related to improper interaction between the PHP header function and certain browsers, as demonstrated by Internet Explorer and Google Chrome..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9705",
            "description":
                " Heap-based buffer overflow in the enchant_broker_request_dict function in ext/enchant/enchant.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 allows remote attackers to execute arbitrary code via vectors that trigger creation of multiple dictionaries..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.1,
            "cveNo": "CVE-2016-3185",
            "description":
                " The make_http_soap_request function in ext/soap/php_http.c in PHP before 5.4.44, 5.5.x before 5.5.28, 5.6.x before 5.6.12, and 7.x before 7.0.4 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (type confusion and application crash) via crafted serialized _cookies data, related to the SoapClient::__call method in ext/soap/soap.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3368",
            "description":
                " The mod_proxy module in the Apache HTTP Server 1.3.x through 1.3.42, 2.0.x through 2.0.64, and 2.2.x through 2.2.21 does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers via a malformed URI containing an initial @ (at sign) character..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": [
              "remote : Multiple : 17969 Apache mod_proxy - Reverse Proxy Exposure"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-5589",
            "description":
                " The phar_convert_to_other function in ext/phar/phar_object.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 does not validate a file pointer before a close operation, which allows remote attackers to cause a denial of service (segmentation fault) or possibly have unspecified other impact via a crafted TAR archive that is mishandled in a Phar::convertToData call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1148",
            "description":
                " Use-after-free vulnerability in the substr_replace function in PHP 5.3.6 and earlier allows context-dependent attackers to cause a denial of service (memory corruption) or possibly have unspecified other impact by using the same variable for multiple arguments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2018-7584",
            "description":
                " In PHP through 5.6.33, 7.0.x before 7.0.28, 7.1.x through 7.1.14, and 7.2.x through 7.2.2, there is a stack-based buffer under-read while parsing an HTTP response in the php_stream_url_wrap_http_ex function in ext/standard/http_fopen_wrapper.c. This subsequently results in copying a large string..",
            "vendors": ["debian", "php", "canonical"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 44846 PHP 7.2.2 - &#039;php_stream_url_wrap_http_ex&#039; Buffer Overflow"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10397",
            "description":
                " In PHP before 5.6.28 and 7.x before 7.0.13, incorrect handling of various URI components in the URL parser could be used by attackers to bypass hostname-specific URL checks, as demonstrated by evil.example.com:80#@good.example.com/ and evil.example.com:80?@good.example.com/ inputs to the parse_url function (implemented in the php_url_parse_ex function in ext/standard/url.c)..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2011-4718",
            "description":
                " Session fixation vulnerability in the Sessions subsystem in PHP before 5.5.2 allows remote attackers to hijack web sessions by specifying a session ID..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-3669",
            "description":
                " Integer overflow in the object_custom function in ext/standard/var_unserializer.c in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an argument to the unserialize function that triggers calculation of a large length value..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-3668",
            "description":
                " Buffer overflow in the date_from_ISO8601 function in the mkgmtime implementation in libxmlrpc/xmlrpc.c in the XMLRPC extension in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 allows remote attackers to cause a denial of service (application crash) via (1) a crafted first argument to the xmlrpc_set_type function or (2) a crafted argument to the xmlrpc_decode function, related to an out-of-bounds read operation..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-0226",
            "description":
                " Race condition in the mod_status module in the Apache HTTP Server before 2.4.10 allows remote attackers to cause a denial of service (heap-based buffer overflow), or possibly obtain sensitive credential information or execute arbitrary code, via a crafted request that triggers improper scoreboard handling within the status_handler function in modules/generators/mod_status.c and the lua_ap_scoreboard_worker function in modules/lua/lua_request.c..",
            "vendors": ["apache", "oracle", "redhat"],
            "products": [
              "http server",
              "secure global desktop",
              "enterprise manager ops center",
              "jboss enterprise application platform"
            ],
            "exploits": [
              "DoS : Linux : Apache 2.4.7 mod_status - Scoreboard Handling Race Condition"
            ]
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-4598",
            "description":
                " PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read or write to arbitrary files via crafted input to an application that calls (1) a DOMDocument save method or (2) the GD imagepsloadfont function, as demonstrated by a filename\\0.html attack that bypasses an intended configuration in which client users may write to only .html files..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10161",
            "description":
                " The object_common1 function in ext/standard/var_unserializer.c in PHP before 5.6.30, 7.0.x before 7.0.15, and 7.1.x before 7.1.1 allows remote attackers to cause a denial of service (buffer over-read and application crash) via crafted serialized data that is mishandled in a finish_nested_data call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2015-3412",
            "description":
                " PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read arbitrary files via crafted input to an application that calls the stream_resolve_include_path function in ext/standard/streamsfuncs.c, as demonstrated by a filename\\0.extension attack that bypasses an intended configuration in which client users may read files with only one specific extension..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2022-22721",
            "description":
                " If LimitXMLRequestBody is set to allow request bodies larger than 350MB (defaults to 1M) on 32 bit systems an integer overflow happens which later causes out of bounds writes. This issue affects Apache HTTP Server 2.4.52 and earlier..",
            "vendors": ["apache", "oracle"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-4635",
            "description":
                " Integer overflow in the SdnToJewish function in jewish.c in the Calendar component in PHP before 5.3.26 and 5.4.x before 5.4.16 allows context-dependent attackers to cause a denial of service (application hang) via a large argument to the jdtojewish function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0708",
            "description":
                " exif.c in the Exif extension in PHP before 5.3.6 on 64-bit platforms performs an incorrect cast, which allows remote attackers to cause a denial of service (application crash) via an image with a crafted Image File Directory (IFD) that triggers a buffer over-read..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : Multiple : 16261 PHP &#039;Exif&#039; Extension - &#039;exif_read_data()&#039; Remote Denia"
            ]
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-4317",
            "description":
                " The mod_proxy module in the Apache HTTP Server 1.3.x through 1.3.42, 2.0.x through 2.0.64, and 2.2.x through 2.2.21, when the Revision 1179239 patch is in place, does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers via a malformed URI containing an @ (at sign) character and a : (colon) character in invalid positions.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2011-3368..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2018-10547",
            "description":
                " An issue was discovered in ext/phar/phar_object.c in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. There is Reflected XSS on the PHAR 403 and 404 error pages via request data of a request for a .phar file. NOTE: this vulnerability exists because of an incomplete fix for CVE-2018-5712..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5769",
            "description":
                " Multiple integer overflows in mcrypt.c in the mcrypt extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allow remote attackers to cause a denial of service (heap-based buffer overflow and application crash) or possibly have unspecified other impact via a crafted length value, related to the (1) mcrypt_generic and (2) mdecrypt_generic functions..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-3307",
            "description":
                " The phar_parse_metadata function in ext/phar/phar.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (heap metadata corruption) or possibly have unspecified other impact via a crafted tar archive..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2014-9912",
            "description":
                " The get_icu_disp_value_src_php function in ext/intl/locale/locale_methods.c in PHP before 5.3.29, 5.4.x before 5.4.30, and 5.5.x before 5.5.14 does not properly restrict calls to the ICU uresbund.cpp component, which allows remote attackers to cause a denial of service (buffer overflow) or possibly have unspecified other impact via a locale_get_display_name call with a long first argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-4699",
            "description":
                " The iconv_mime_decode_headers function in the Iconv extension in PHP before 5.3.4 does not properly handle encodings that are unrecognized by the iconv and mbstring (aka Multibyte String) implementations, which allows remote attackers to trigger an incomplete output array, and possibly bypass spam detection or have unspecified other impact, via a crafted Subject header in an e-mail message, as demonstrated by the ks_c_5601-1987 character set..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-5387",
            "description":
                " The Apache HTTP Server through 2.4.23 follows RFC 3875 section 4.1.18 and therefore does not protect applications from the presence of untrusted client data in the HTTP_PROXY environment variable, which might allow remote attackers to redirect an application's outbound HTTP traffic to an arbitrary proxy server via a crafted Proxy header in an HTTP request, aka an \"httpoxy\" issue.  NOTE: the vendor states \"This mitigation has been assigned the identifier CVE-2016-5387\"; in other words, this is not a CVE ID for a vulnerability..",
            "vendors": ["apache", "oracle", "hp", "redhat"],
            "products": [
              "system management homepage",
              "jboss enterprise web server",
              "http server",
              "enterprise manager ops center",
              "jboss core services",
              "jboss web server",
              "communications user data repository"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-29404",
            "description":
                " In Apache HTTP Server 2.4.53 and earlier, a malicious request to a lua script that calls r:parsebody(0) may cause a denial of service due to no default limit on possible input size..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4599",
            "description":
                " The SoapFault::__toString method in ext/soap/soap.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to obtain sensitive information, cause a denial of service (application crash), or possibly execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9,
            "cveNo": "CVE-2021-40438",
            "description":
                " A crafted request uri-path can cause mod_proxy to forward the request to an origin server choosen by the remote user. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "storagegrid",
              "enterprise manager ops center",
              "secure global desktop",
              "sinema server",
              "cloud backup",
              "instantis enterprisetrack",
              "sinec nms",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-5590",
            "description":
                " Stack-based buffer overflow in the phar_fix_filepath function in ext/phar/phar.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large length value, as demonstrated by mishandling of an e-mail attachment by the imap PHP extension..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5093",
            "description":
                " The get_icu_value_internal function in ext/intl/locale/locale_methods.c in PHP before 5.5.36, 5.6.x before 5.6.22, and 7.x before 7.0.7 does not ensure the presence of a '\\0' character, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a crafted locale_get_primary_language call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7132",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via an invalid wddxPacket XML document that is mishandled in a wddx_deserialize call, as demonstrated by a stray element inside a boolean element, leading to incorrect pop processing..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6288",
            "description":
                " The php_url_parse_ex function in ext/standard/url.c in PHP before 5.5.38 allows remote attackers to cause a denial of service (buffer over-read) or possibly have unspecified other impact via vectors involving the smart_str data type..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7130",
            "description":
                " The php_wddx_pop_element function in ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via an invalid base64 binary value, as demonstrated by a wddx_deserialize call that mishandles a binary element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8994",
            "description":
                " An issue was discovered in PHP 5.x and 7.x, when the configuration uses apache2handler/mod_php or php-fpm with OpCache enabled. With 5.x after 5.6.28 or 7.x after 7.0.13, the issue is resolved in a non-default configuration with the opcache.validate_permission=1 setting. The vulnerability details are as follows. In PHP SAPIs where PHP interpreters share a common parent process, Zend OpCache creates a shared memory object owned by the common parent during initialization. Child PHP processes inherit the SHM descriptor, using it to cache and retrieve compiled script bytecode (\"opcode\" in PHP jargon). Cache keys vary depending on configuration, but filename is a central key component, and compiled opcode can generally be run if a script's filename is known or can be guessed. Many common shared-hosting configurations change EUID in child processes to enforce privilege separation among hosted users (for example using mod_ruid2 for the Apache HTTP Server, or php-fpm user settings). In these scenarios, the default Zend OpCache behavior defeats script file permissions by sharing a single SHM cache among all child PHP processes. PHP scripts often contain sensitive information: Think of CMS configurations where reading or running another user's script usually means gaining privileges to the CMS database..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2008-0455",
            "description":
                " Cross-site scripting (XSS) vulnerability in the mod_negotiation module in the Apache HTTP Server 2.2.6 and earlier in the 2.2.x series, 2.0.61 and earlier in the 2.0.x series, and 1.3.39 and earlier in the 1.3.x series allows remote authenticated users to inject arbitrary web script or HTML by uploading a file with a name containing XSS sequences and a file extension, which leads to injection within a (1) \"406 Not Acceptable\" or (2) \"300 Multiple Choices\" HTTP response when the extension is omitted in a request for the file..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-3478",
            "description":
                " Buffer overflow in the mconvert function in softmagic.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, allows remote attackers to cause a denial of service (application crash) via a crafted Pascal string in a FILE_PSTRING conversion..",
            "vendors": ["php", "christos_zoulas"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8873",
            "description":
                " Stack consumption vulnerability in Zend/zend_exceptions.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to cause a denial of service (segmentation fault) via recursive method calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2018-1302",
            "description":
                " When an HTTP/2 stream was destroyed after being handled, the Apache HTTP Server prior to version 2.4.30 could have written a NULL pointer potentially to an already freed memory. The memory pools maintained by the server make this vulnerability hard to trigger in usual configurations, the reporter and the team could not reproduce it outside debug builds, so it is classified as low risk..",
            "vendors": ["apache", "canonical", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-1303",
            "description":
                " A specially crafted HTTP request header could have crashed the Apache HTTP Server prior to version 2.4.30 due to an out of bound read while preparing data to be cached in shared memory. It could be used as a Denial of Service attack against users of mod_cache_socache. The vulnerability is considered as low risk since mod_cache_socache is not widely used, mod_cache_disk is not concerned by this vulnerability..",
            "vendors": ["apache", "debian", "canonical", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store"
            ],
            "exploits": [
              "webapps : PHP : 44960 DAMICMS 6.0.0 - Cross-Site Request Forgery (Add Admin)",
              "webapps : Hardware : 44938 Ecessa ShieldLink SL175EHQ &lt; 10.7.4 - Cross-Site Request Forgery (Add S"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2022-22720",
            "description":
                " Apache HTTP Server 2.4.52 and earlier fails to close inbound connection when errors are encountered discarding the request body, exposing the server to HTTP Request Smuggling.",
            "vendors": ["apache", "oracle"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8877",
            "description":
                " The gdImageScaleTwoPass function in gd_interpolation.c in the GD Graphics Library (aka libgd) before 2.2.0, as used in PHP before 5.6.12, uses inconsistent allocate and free approaches, which allows remote attackers to cause a denial of service (memory consumption) via a crafted call, as demonstrated by a call to the PHP imagescale function..",
            "vendors": ["libgd", "php"],
            "products": ["libgd", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8874",
            "description":
                " Stack consumption vulnerability in GD in PHP before 5.6.12 allows remote attackers to cause a denial of service via a crafted imagefilltoborder call..",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.2,
            "cveNo": "CVE-2016-3142",
            "description":
                " The phar_parse_zipfile function in zip.c in the PHAR extension in PHP before 5.5.33 and 5.6.x before 5.6.19 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (out-of-bounds read and application crash) by placing a PK\\x05\\x06 signature at an invalid location..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5096",
            "description":
                " Integer overflow in the fread function in ext/standard/file.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large integer in the second argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4643",
            "description":
                " Integer overflow in the ftp_genlist function in ext/ftp/ftp.c in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 allows remote FTP servers to execute arbitrary code via a long reply to a LIST command, leading to a heap-based buffer overflow.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2015-4022..",
            "vendors": ["oracle", "debian", "php", "redhat"],
            "products": [
              "enterprise_linux_server_tus",
              "enterprise_linux_server_aus",
              "debian_linux",
              "linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8879",
            "description":
                " The odbc_bindcols function in ext/odbc/php_odbc.c in PHP before 5.6.12 mishandles driver behavior for SQL_WVARCHAR columns, which allows remote attackers to cause a denial of service (application crash) in opportunistic circumstances by leveraging use of the odbc_fetch_array function to access a certain type of Microsoft SQL Server table..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-9253",
            "description":
                " An issue was discovered in PHP 7.3.x before 7.3.0alpha3, 7.2.x before 7.2.8, and before 7.1.20. The php-fpm master process restarts a child process in an endless loop when using program execution functions (e.g., passthru, exec, shell_exec, or system) with a non-blocking STDIN stream, causing this master process to consume 100% of the CPU, and consume disk space with a large volume of error logs, as demonstrated by an attack by a customer of a shared-hosting facility..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9653",
            "description":
                " readelf.c in file before 5.22, as used in the Fileinfo component in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5, does not consider that pread calls sometimes read only a subset of the available data, which allows remote attackers to cause a denial of service (uninitialized memory access) or possibly have unspecified other impact via a crafted ELF file..",
            "vendors": ["file_project", "debian", "php"],
            "products": ["file", "debian_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4021",
            "description":
                " The phar_parse_tarfile function in ext/phar/tar.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 does not verify that the first character of a filename is different from the \\0 character, which allows remote attackers to cause a denial of service (integer underflow and memory corruption) via a crafted entry in a tar archive..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-1823",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.12 and 5.4.x before 5.4.2, when configured as a CGI script (aka php-cgi), does not properly handle query strings that lack an = (equals sign) character, which allows remote attackers to execute arbitrary code by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'd' case..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2015-8838",
            "description":
                " ext/mysqlnd/mysqlnd.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 uses a client SSL option to mean that SSL is optional, which allows man-in-the-middle attackers to spoof servers via a cleartext-downgrade attack, a related issue to CVE-2015-3152..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4022",
            "description":
                " Integer overflow in the ftp_genlist function in ext/ftp/ftp.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 allows remote FTP servers to execute arbitrary code via a long reply to a LIST command, leading to a heap-based buffer overflow..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4025",
            "description":
                " PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 truncates a pathname upon encountering a \\x00 character in certain situations, which allows remote attackers to bypass intended extension restrictions and access files or directories with unexpected names via a crafted argument to (1) set_include_path, (2) tempnam, (3) rmdir, or (4) readlink.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-6712",
            "description":
                " The scan function in ext/date/lib/parse_iso_intervals.c in PHP through 5.5.6 does not properly restrict creation of DateInterval objects, which might allow remote attackers to cause a denial of service (heap-based buffer over-read) via a crafted interval specification..",
            "vendors": ["apple", "opensuse", "php"],
            "products": ["mac_os_x", "opensuse", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4026",
            "description":
                " The pcntl_exec implementation in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 truncates a pathname upon encountering a \\x00 character, which might allow remote attackers to bypass intended extension restrictions and execute files with unexpected names via a crafted first argument.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9425",
            "description":
                " Double free vulnerability in the zend_ts_hash_graceful_destroy function in zend_ts_hash.c in the Zend Engine in PHP through 5.5.20 and 5.6.x through 5.6.4 allows remote attackers to cause a denial of service or possibly have unspecified other impact via unknown vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-9226",
            "description":
                " An issue was discovered in Oniguruma 6.2.0, as used in Oniguruma-mod in Ruby through 2.4.1 and mbstring in PHP through 7.1.5. A heap out-of-bounds write or read occurs in next_state_val() during regular expression compilation. Octal numbers larger than 0xff are not handled correctly in fetch_token() and fetch_token_in_cc(). A malformed regular expression containing an octal number in the form of '\\700' would produce an invalid code point value larger than 0xff in next_state_val(), resulting in an out-of-bounds write memory corruption..",
            "vendors": ["oniguruma project", "php"],
            "products": ["php", "oniguruma"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9427",
            "description":
                " sapi/cgi/cgi_main.c in the CGI component in PHP through 5.4.36, 5.5.x through 5.5.20, and 5.6.x through 5.6.4, when mmap is used to read a .php file, does not properly consider the mapping's length during processing of an invalid file that begins with a # character and lacks a newline character, which causes an out-of-bounds read and might (1) allow remote attackers to obtain sensitive information from php-cgi process memory by leveraging the ability to upload a .php file or (2) trigger unexpected code execution if a valid PHP script is present in memory locations adjacent to the mapping..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9426",
            "description":
                " ** DISPUTED ** The apprentice_load function in libmagic/apprentice.c in the Fileinfo component in PHP through 5.6.4 attempts to perform a free operation on a stack-based character array, which allows remote attackers to cause a denial of service (memory corruption or application crash) or possibly have unspecified other impact via unknown vectors.  NOTE: this is disputed by the vendor because the standard erealloc behavior makes the free operation unreachable..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10158",
            "description":
                " The exif_convert_any_to_int function in ext/exif/exif.c in PHP before 5.6.30, 7.0.x before 7.0.15, and 7.1.x before 7.1.1 allows remote attackers to cause a denial of service (application crash) via crafted EXIF data that triggers an attempt to divide the minimum representable negative integer by -1..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10159",
            "description":
                " Integer overflow in the phar_parse_pharfile function in ext/phar/phar.c in PHP before 5.6.30 and 7.0.x before 7.0.15 allows remote attackers to cause a denial of service (memory consumption or application crash) via a truncated manifest entry in a PHAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-3670",
            "description":
                " The exif_ifd_make_value function in exif.c in the EXIF extension in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 operates on floating-point arrays incorrectly, which allows remote attackers to cause a denial of service (heap memory corruption and application crash) or possibly execute arbitrary code via a crafted JPEG image with TIFF thumbnail data that is improperly handled by the exif_thumbnail function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0098",
            "description":
                " The log_cookie function in mod_log_config.c in the mod_log_config module in the Apache HTTP Server before 2.4.8 allows remote attackers to cause a denial of service (segmentation fault and daemon crash) via a crafted cookie that is not properly handled during truncation..",
            "vendors": ["apache", "oracle"],
            "products": ["http server", "secure global desktop"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-0228",
            "description":
                " The lua_websocket_read function in lua_request.c in the mod_lua module in the Apache HTTP Server through 2.4.12 allows remote attackers to cause a denial of service (child-process crash) by sending a crafted WebSocket Ping frame after a Lua script has called the wsupgrade function..",
            "vendors": ["apple", "apache", "opensuse", "canonical"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9641",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_TIFF..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-9224",
            "description":
                " An issue was discovered in Oniguruma 6.2.0, as used in Oniguruma-mod in Ruby through 2.4.1 and mbstring in PHP through 7.1.5. A stack out-of-bounds read occurs in match_at() during regular expression searching. A logical error involving order of validation and access in match_at() could result in an out-of-bounds read from a stack buffer..",
            "vendors": ["oniguruma project", "php"],
            "products": ["php", "oniguruma"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-8743",
            "description":
                " Apache HTTP Server, in all releases prior to 2.2.32 and 2.4.25, was liberal in the whitespace accepted from requests and sent in response lines and headers. Accepting these different behaviors represented a security concern when httpd participates in any chain of proxies or interacts with back-end application servers, either through mod_proxy or using conventional CGI mechanisms, and may result in request smuggling, response splitting and cache pollution..",
            "vendors": ["apache", "redhat", "netapp"],
            "products": [
              "http server",
              "oncommand unified manager",
              "jboss core services",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-3365",
            "description":
                " The SQLite functionality in PHP before 5.3.15 allows remote attackers to bypass the open_basedir protection mechanism via unspecified vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-15132",
            "description":
                " An issue was discovered in ext/standard/link_win32.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. The linkinfo function on Windows doesn't implement the open_basedir check. This could be abused to find files on paths outside of the allowed directories..",
            "vendors": ["php", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7124",
            "description":
                " ext/standard/var_unserializer.c in PHP before 5.6.25 and 7.x before 7.0.10 mishandles certain invalid objects, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data that leads to a (1) __destruct call or (2) magic method call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7125",
            "description":
                " ext/session/session.c in PHP before 5.6.25 and 7.x before 7.0.10 skips invalid session names in a way that triggers incorrect parsing, which allows remote attackers to inject arbitrary-type session data by leveraging control of a session name, as demonstrated by object injection..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7126",
            "description":
                " The imagetruecolortopalette function in ext/gd/gd.c in PHP before 5.6.25 and 7.x before 7.0.10 does not properly validate the number of colors, which allows remote attackers to cause a denial of service (select_colors allocation error and out-of-bounds write) or possibly have unspecified other impact via a large value in the third argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7127",
            "description":
                " The imagegammacorrect function in ext/gd/gd.c in PHP before 5.6.25 and 7.x before 7.0.10 does not properly validate gamma values, which allows remote attackers to cause a denial of service (out-of-bounds write) or possibly have unspecified other impact by providing different signs for the second and third arguments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6836",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/843.html\">CWE-843: Access of Resource Using Incompatible Type ('Type Confusion')</a>..  The SoapClient __call method in ext/soap/soap.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 does not properly manage headers, which allows remote attackers to execute arbitrary code via crafted serialized data that triggers a \"type confusion\" in the serialize_function_call function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4642",
            "description":
                " The escapeshellarg function in ext/standard/exec.c in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 on Windows allows remote attackers to execute arbitrary OS commands via a crafted string to an application that accepts command-line arguments for a call to the PHP system function..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0753",
            "description":
                " Race condition in the PCNTL extension in PHP before 5.3.4, when a user-defined signal handler exists, might allow context-dependent attackers to cause a denial of service (memory corruption) via a large number of concurrent signals..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2016-7128",
            "description":
                " The exif_process_IFD_in_TIFF function in ext/exif/exif.c in PHP before 5.6.25 and 7.x before 7.0.10 mishandles the case of a thumbnail offset that exceeds the file size, which allows remote attackers to obtain sensitive information from process memory via a crafted TIFF image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7129",
            "description":
                " The php_wddx_process_data function in ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (segmentation fault) or possibly have unspecified other impact via an invalid ISO 8601 time value, as demonstrated by a wddx_deserialize call that mishandles a dateTime element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-0755",
            "description":
                " Integer overflow in the mt_rand function in PHP before 5.3.4 might make it easier for context-dependent attackers to predict the return values by leveraging a script's use of a large max parameter, as demonstrated by a value that exceeds mt_getrandmax..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.4,
            "cveNo": "CVE-2011-0754",
            "description":
                " The SplFileInfo::getType function in the Standard PHP Library (SPL) extension in PHP before 5.3.4 on Windows does not properly detect symbolic links, which might make it easier for local users to conduct symlink attacks by leveraging cross-platform differences in the stat structure, related to lack of a FILE_ATTRIBUTE_REPARSE_POINT check..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3267",
            "description":
                " PHP before 5.3.7 does not properly implement the error_log function, which allows context-dependent attackers to cause a denial of service (application crash) via unspecified vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-2554",
            "description":
                " Stack-based buffer overflow in ext/phar/tar.c in PHP before 5.5.32, 5.6.x before 5.6.18, and 7.x before 7.0.3 allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a crafted TAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2017-11628",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, a stack-based buffer overflow in the zend_ini_do_op() function in Zend/zend_ini_parser.c could cause a denial of service or potentially allow executing code. NOTE: this is only relevant for PHP applications that accept untrusted input (instead of the system's php.ini file) for the parse_ini_string or parse_ini_file function, e.g., a web application for syntax validation of php.ini directives..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3480",
            "description":
                " The cdf_count_chain function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, does not properly validate sector-count data, which allows remote attackers to cause a denial of service (application crash) via a crafted CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-12933",
            "description":
                " The finish_nested_data function in ext/standard/var_unserializer.re in PHP before 5.6.31, 7.0.x before 7.0.21, and 7.1.x before 7.1.7 is prone to a buffer over-read while unserializing untrusted data. Exploitation of this issue can have an unspecified impact on the integrity of PHP..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2014-4721",
            "description":
                " The phpinfo implementation in ext/standard/info.c in PHP before 5.4.30 and 5.5.x before 5.5.14 does not ensure use of the string data type for the PHP_AUTH_PW, PHP_AUTH_TYPE, PHP_AUTH_USER, and PHP_SELF variables, which might allow context-dependent attackers to obtain sensitive information from process memory by using the integer data type with crafted values, related to a \"type confusion\" vulnerability, as demonstrated by reading a private SSL key in an Apache HTTP Server web-hosting environment with mod_ssl and a PHP 5.3.x mod_php..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2011-3268",
            "description":
                " Buffer overflow in the crypt function in PHP before 5.3.7 allows context-dependent attackers to have an unspecified impact via a long salt argument, a different vulnerability than CVE-2011-2483..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5772",
            "description":
                " Double free vulnerability in the php_wddx_process_data function in wddx.c in the WDDX extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via crafted XML data that is mishandled in a wddx_deserialize call..",
            "vendors": ["suse", "php"],
            "products": ["php", "linux enterprise debuginfo"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-9767",
            "description":
                " Directory traversal vulnerability in the ZipArchive::extractTo function in ext/zip/php_zip.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 and ext/zip/ext_zip.cpp in HHVM before 3.12.1 allows remote attackers to create arbitrary empty directories via a crafted ZIP archive..",
            "vendors": ["php", "hiphop_virtual_machine_for_php_project"],
            "products": ["hiphop_virtual_machine_for_php", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-2331",
            "description":
                " Integer overflow in the _zip_cdir_new function in zip_dirent.c in libzip 0.11.2 and earlier, as used in the ZIP extension in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 and other products, allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a ZIP archive that contains many entries, leading to a heap-based buffer overflow..",
            "vendors": ["fedoraproject", "debian", "opensuse", "php", "nih"],
            "products": ["fedora", "debian_linux", "opensuse", "php", "libzip"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-1896",
            "description":
                " mod_dav.c in the Apache HTTP Server before 2.2.25 does not properly determine whether DAV is enabled for a URI, which allows remote attackers to cause a denial of service (segmentation fault) via a MERGE request in which the URI is configured for handling by the mod_dav_svn module, but a certain href attribute in XML data refers to a non-DAV URI..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4537",
            "description":
                " The bcpowmod function in ext/bcmath/bcmath.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 accepts a negative integer for the scale argument, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via a crafted call..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-2336",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.13 and 5.4.x before 5.4.3, when configured as a CGI script (aka php-cgi), does not properly handle query strings that lack an = (equals sign) character, which allows remote attackers to cause a denial of service (resource consumption) by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'T' case.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1823..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4538",
            "description":
                " The bcpowmod function in ext/bcmath/bcmath.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 modifies certain data structures without considering whether they are copies of the _zero_, _one_, or _two_ global variable, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via a crafted call..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4539",
            "description":
                " The xml_parse_into_struct function in ext/xml/xml.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (buffer under-read and segmentation fault) or possibly have unspecified other impact via crafted XML data in the second argument, leading to a parser level of zero..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-2483",
            "description":
                " crypt_blowfish before 1.1, as used in PHP before 5.3.7 on certain platforms, PostgreSQL before 8.4.9, and other products, does not properly handle 8-bit characters, which makes it easier for context-dependent attackers to determine a cleartext password by leveraging knowledge of a password hash..",
            "vendors": ["php", "solar_designer"],
            "products": ["crypt_blowfish", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5095",
            "description":
                " Integer overflow in the php_escape_html_entities_ex function in ext/standard/html.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact by triggering a large output string from a FILTER_SANITIZE_FULL_SPECIAL_CHARS filter_var call.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2016-5094..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2014-4698",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\" target=\"_blank\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in ext/spl/spl_array.c in the SPL component in PHP through 5.5.14 allows context-dependent attackers to cause a denial of service or possibly have unspecified other impact via crafted ArrayIterator usage within applications in certain web-hosting environments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-3329",
            "description":
                " Multiple stack-based buffer overflows in the phar_set_inode function in phar_internal.h in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allow remote attackers to execute arbitrary code via a crafted length value in a (1) tar, (2) phar, or (3) ZIP archive..",
            "vendors": ["apple", "oracle", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "linux",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-19395",
            "description":
                " ext/standard/var.c in PHP 5.x through 7.1.24 on Windows allows attackers to cause a denial of service (NULL pointer dereference and application crash) because com and com_safearray_proxy return NULL in com_properties_get in ext/com_dotnet/com_handlers.c, as demonstrated by a serialize call on COM(\"WScript.Shell\")..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-0789",
            "description":
                " Memory leak in the timezone functionality in PHP before 5.3.9 allows remote attackers to cause a denial of service (memory consumption) by triggering many strtotime function calls, which are not properly handled by the php_date_parse_tzfile cache..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7131",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via a malformed wddxPacket XML document that is mishandled in a wddx_deserialize call, as demonstrated by a tag that lacks a < (less than) character..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-0788",
            "description":
                " The PDORow implementation in PHP before 5.3.9 does not properly interact with the session feature, which allows remote attackers to cause a denial of service (application crash) via a crafted application that uses a PDO driver for a fetch and then calls the session_start function, as demonstrated by a crash of the Apache HTTP Server..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-3411",
            "description":
                " PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read or write to arbitrary files via crafted input to an application that calls (1) a DOMDocument load method, (2) the xmlwriter_open_uri function, (3) the finfo_file function, or (4) the hash_hmac_file function, as demonstrated by a filename\\0.xml attack that bypasses an intended configuration in which client users may read only .xml files..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2016-6289",
            "description":
                " Integer overflow in the virtual_file_ex function in TSRM/tsrm_virtual_cwd.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (stack-based buffer overflow) or possibly have unspecified other impact via a crafted extract operation on a ZIP archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-3499",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the Apache HTTP Server 2.2.x before 2.2.24-dev and 2.4.x before 2.4.4 allow remote attackers to inject arbitrary web script or HTML via vectors involving hostnames and URIs in the (1) mod_imagemap, (2) mod_info, (3) mod_ldap, (4) mod_proxy_ftp, and (5) mod_status modules..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2010-4657",
            "description":
                " PHP5 before 5.4.4 allows passing invalid utf-8 strings via the xmlTextWriterWriteAttribute, which are then misparsed by libxml2. This results in memory leak into the resulting output..",
            "vendors": ["debian", "php", "redhat"],
            "products": ["enterprise_linux", "debian_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-9934",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.28 and 7.x before 7.0.13 allows remote attackers to cause a denial of service (NULL pointer dereference) via crafted serialized data in a wddxPacket XML document, as demonstrated by a PDORow string..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2018-19520",
            "description":
                " An issue was discovered in SDCMS 1.6 with PHP 5.x. app/admin/controller/themecontroller.php uses a check_bad function in an attempt to block certain PHP functions such as eval, but does not prevent use of preg_replace 'e' calls, allowing users to execute arbitrary code by leveraging access to admin template management..",
            "vendors": ["php", "sdcms"],
            "products": ["php", "sdcms"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7478",
            "description":
                " Zend/zend_exceptions.c in PHP, possibly 5.x before 5.6.28 and 7.x before 7.0.13, allows remote attackers to cause a denial of service (infinite loop) via a crafted Exception object in serialized data, a related issue to CVE-2015-8876...  <a href=\"http://cwe.mitre.org/data/definitions/835.html\">CWE-835: Loop with Unreachable Exit Condition ('Infinite Loop')</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4644",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The php_pgsql_meta_data function in pgsql.c in the PostgreSQL (aka pgsql) extension in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 does not validate token extraction for table names, which might allow remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted name.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2015-1352..",
            "vendors": ["php", "redhat"],
            "products": ["enterprise_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11142",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.17, and 7.1.x before 7.1.3, remote attackers could cause a CPU consumption denial of service attack by injecting long form variables, related to main/php_variables.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-2386",
            "description":
                " Integer overflow in the phar_parse_tarfile function in tar.c in the phar extension in PHP before 5.3.14 and 5.4.x before 5.4.4 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted tar file that triggers a heap-based buffer overflow..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-4343",
            "description":
                " The phar_make_dirstream function in ext/phar/dirstream.c in PHP before 5.6.18 and 7.x before 7.0.3 mishandles zero-size ././@LongLink files, which allows remote attackers to cause a denial of service (uninitialized pointer dereference) or possibly have unspecified other impact via a crafted TAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-4342",
            "description":
                " ext/phar/phar_object.c in PHP before 5.5.32, 5.6.x before 5.6.18, and 7.x before 7.0.3 mishandles zero-length uncompressed data, which allows remote attackers to cause a denial of service (heap memory corruption) or possibly have unspecified other impact via a crafted (1) TAR, (2) ZIP, or (3) PHAR archive..",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2012-2376",
            "description":
                " Buffer overflow in the com_print_typeinfo function in PHP 5.4.3 and earlier on Windows allows remote attackers to execute arbitrary code via crafted arguments that trigger incorrect handling of COM object VARIANT types, as exploited in the wild in May 2012..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": [
              "local : Windows_x86 : 18861 PHP 5.4.3 (Windows x86 Polish) - Code Execution"
            ]
          },
          {
            "cyfirmaScore": 3.3,
            "cveNo": "CVE-2014-3981",
            "description":
                " acinclude.m4, as used in the configure script in PHP 5.5.13 and earlier, allows local users to overwrite arbitrary files via a symlink attack on the /tmp/phpglibccheck file..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2016-8612",
            "description":
                " Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process..",
            "vendors": ["apache", "redhat", "netapp"],
            "products": [
              "enterprise_linux",
              "storage_automation_store",
              "http_server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-7803",
            "description":
                " The phar_get_entry_data function in ext/phar/util.c in PHP before 5.5.30 and 5.6.x before 5.6.14 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a .phar file with a crafted TAR archive entry in which the Link indicator references a file that does not exist...  <a href=\"https://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>\n\n<a href=\"http://lists.apple.com/archives/security-announce/2015/Dec/msg00005.html\">Per Advisory: The attack can lead to remote code execution.",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-7804",
            "description":
                " <a href=\"http://lists.apple.com/archives/security-announce/2015/Dec/msg00005.html\">Per Advisory: The attack can lead to remote code execution..  Off-by-one error in the phar_parse_zipfile function in ext/phar/zip.c in PHP before 5.5.30 and 5.6.x before 5.6.14 allows remote attackers to cause a denial of service (uninitialized pointer dereference and application crash) by including the / filename in a .zip PHAR archive..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2018-1301",
            "description":
                " A specially crafted request could have crashed the Apache HTTP Server prior to version 2.4.30, due to an out of bound access after a size limit is reached by reading the HTTP header. This vulnerability is considered very hard if not impossible to trigger in non-debug mode (both log and build level), so it is classified as low risk for common server usage..",
            "vendors": ["apache", "debian", "canonical", "redhat", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2017-9788",
            "description":
                " In Apache httpd before 2.2.34 and 2.4.x before 2.4.27, the value placeholder in [Proxy-]Authorization headers of type 'Digest' was not initialized or reset before or between successive key=value assignments by mod_auth_digest. Providing an initial key with no '=' assignment could reflect the stale value of uninitialized pool memory used by the prior request, leading to leakage of potentially confidential information, and a segfault in other cases resulting in denial of service..",
            "vendors": [
              "apple",
              "apache",
              "oracle",
              "debian",
              "redhat",
              "netapp"
            ],
            "products": [
              "jboss enterprise web server",
              "http server",
              "oncommand unified manager",
              "secure global desktop",
              "jboss core services",
              "storage automation store",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 3.6,
            "cveNo": "CVE-2014-5459",
            "description":
                " The PEAR_REST class in REST.php in PEAR in PHP through 5.6.0 allows local users to write to arbitrary files via a symlink attack on a (1) rest.cachefile or (2) rest.cacheid file in /tmp/pear/cache/, related to the retrieveCacheFirst and useLocalCache functions..",
            "vendors": ["oracle", "opensuse", "php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-2348",
            "description":
                " The move_uploaded_file implementation in ext/standard/basic_functions.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 truncates a pathname upon encountering a \\x00 character, which allows remote attackers to bypass intended extension restrictions and create files with unexpected names via a crafted second argument.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "opensuse", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "opensuse",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-30556",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may return lengths to applications calling r:wsread() that point past the end of the storage allocated for the buffer..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-3330",
            "description":
                " The php_handler function in sapi/apache2handler/sapi_apache2.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, when the Apache HTTP Server 2.4.x is used, allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via pipelined HTTP requests that result in a \"deconfigured interpreter.\".",
            "vendors": ["apple", "oracle", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "linux",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-16642",
            "description":
                " In PHP before 5.6.32, 7.x before 7.0.25, and 7.1.x before 7.1.11, an error in the date extension's timelib_meridian handling of 'front of' and 'back of' directives could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: this is a different issue than CVE-2017-11145..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": [
              "clustered_data_ontap",
              "debian_linux",
              "php",
              "storage_automation_store",
              "ubuntu_linux"
            ],
            "exploits": [
              "dos : Multiple : 43133 PHP 7.1.8 - Heap Buffer Overflow"
            ]
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1471",
            "description":
                " Integer signedness error in zip_stream.c in the Zip extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (CPU consumption) via a malformed archive file that triggers errors in zip_fread function calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1470",
            "description":
                " The Zip extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via a ziparchive stream that is not properly handled by the stream_get_contents function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3479",
            "description":
                " The cdf_check_stream_offset function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, relies on incorrect sector-size data, which allows remote attackers to cause a denial of service (application crash) via a crafted stream offset in a CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2022-28615",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may crash or disclose information due to a read beyond bounds in ap_strcmp_match() when provided with an extremely large input buffer. While no code distributed with the server can be coerced into such a call, third-party modules or lua scripts that use ap_strcmp_match() may hypothetically be affected..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2022-28614",
            "description":
                " The ap_rwrite() function in Apache HTTP Server 2.4.53 and earlier may read unintended memory if an attacker can cause the server to reflect very large input using ap_rwrite() or ap_rputs(), such as with mod_luas r:puts() function. Modules compiled and distributed separately from Apache HTTP Server that use the 'ap_rputs' function and may pass it a very large (INT_MAX or larger) string must be compiled against current headers to resolve the issue..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          }
        ],
        "dataBreachIPVulnerabilityId": "635efabf3d72934a4d174ee6",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description":
            "You have software php 5.2.17, http_server 2.2.15, jquery cloudflare running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">GCMAN</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">RTM</span>, <span class=\"active-txt TA\">Stone Panda</span>, <span class=\"active-txt TA\">TATestFORAsset</span>, <span class=\"active-txt TA\">Test_New_ThreatActor</span>",
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": true,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": true,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 9,
        "riskRating": 9,
        "openPortRiskRating": 1,
        "configRiskRating": 9,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "openPortLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "configLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "threatActors": [
          "Fancy Bear",
          "GCMAN",
          "Lazarus Group",
          "MISSION2025",
          "RTM",
          "Stone Panda",
          "TATestFORAsset",
          "Test_New_ThreatActor"
        ],
        "subDomainUID": "625fcd733d7293cd2cc4966d",
        "subDomainCreatedDate": "2022-04-20T09:08:03.389Z",
        "isNew": false
      }
    },
    {
      "id": "635f015a3d72934a4d17640f",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635ef9493d72934a4d174bae",
      "date": null,
      "createdDate": "2022-10-30T22:57:30.827",
      "orgId": 1,
      "title": "You have non-standard ports 80 opened",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:23:05.033Z",
        "lastModifiedDate": "2022-10-30T22:23:05.033Z",
        "id": "635ef9493d72934a4d174bae",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "40.99.9.184",
        "ips": ["52.98.123.232", "52.98.88.248", "40.99.9.40", "40.99.9.184"],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[859ad866-61bd-f2a9-3312-5b5314c607cf], X-FEServer=[PN3PR01CA0052, PN3PR01CA0052], X-RequestId=[14c68a84-41a6-4b20-975c-99fc3b93ec00], X-FEProxyInfo=[PN3PR01CA0052.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[Ztiahb1hqfIzEltTFMYHzw.0], X-Powered-By=[ASP.NET], Date=[Sun, 30 Oct 2022 21:14:34 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288dd0b3d7293f0df52489d",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:23:05.033Z",
        "openPortLastModifiedDate": "2022-10-30T22:23:05.033Z",
        "configLastModifiedDate": "2022-10-30T22:23:05.033Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635f015a3d72934a4d17640d",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635ef9443d72934a4d174ba3",
      "date": null,
      "createdDate": "2022-10-30T22:57:30.498",
      "orgId": 1,
      "title": "You have non-standard ports 80, 443 opened",
      "description":
          "You have software windows , internet_information_services 8.5,  running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">Stone Panda</span>",
      "riskScore": 1,
      "source": "lyncdiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "lyncdiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:23:00.426Z",
        "lastModifiedDate": "2022-10-30T22:23:00.426Z",
        "id": "635ef9443d72934a4d174ba3",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "lyncdiscover.cyfirma.com",
        "ip": "52.113.67.78",
        "ips": ["52.113.67.78"],
        "source": "lyncdiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Content-Type=[application/json], Expires=[-1], X-MS-Correlation-Id=[66118443-0a62-489a-8665-7ec170409057], x-ms-client-request-id=[15b0e5fd-ff7f-4084-8860-59b393239308], X-Content-Type-Options=[nosniff], Date=[Sun, 30 Oct 2022 21:32:41 GMT], Content-Length=[351]}",
        "software": "windows , internet_information_services 8.5",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {"windows": "", "internet.information.services": "8.5"},
        "technologyList": [
          "internet information services",
          "windows",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": true,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": ["CVE-2014-4078"],
        "cveDetails": [
          {
            "cyfirmaScore": 5.1,
            "cveNo": "CVE-2014-4078",
            "description":
                " The IP Security feature in Microsoft Internet Information Services (IIS) 8.0 and 8.5 does not properly process wildcard allow and deny rules for domains within the \"IP Address and Domain Restrictions\" list, which makes it easier for remote attackers to bypass an intended rule set via an HTTP request, aka \"IIS Security Feature Bypass Vulnerability.\".",
            "vendors": ["microsoft"],
            "products": ["internet_information_services"],
            "exploits": []
          }
        ],
        "dataBreachIPVulnerabilityId": "6288dd0f3d7293f0df5249b1",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description":
            "You have software windows , internet_information_services 8.5,  running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">Stone Panda</span>",
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 6,
        "riskRating": 6,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:23:00.426Z",
        "openPortLastModifiedDate": "2022-10-30T22:23:00.426Z",
        "configLastModifiedDate": "2022-10-30T22:23:00.426Z",
        "threatActors": [
          "Fancy Bear",
          "Lazarus Group",
          "MISSION2025",
          "Stone Panda"
        ],
        "subDomainUID": "625fcd8c3d7293cd2cc4968e",
        "subDomainCreatedDate": "2022-04-20T09:08:28.520Z",
        "isNew": false
      }
    },
    {
      "id": "635f01593d72934a4d17640b",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635ef9243d72934a4d174b6e",
      "date": null,
      "createdDate": "2022-10-30T22:57:29.176",
      "orgId": 1,
      "title": "You have non-standard ports 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:22:28.630Z",
        "lastModifiedDate": "2022-10-30T22:22:28.630Z",
        "id": "635ef9243d72934a4d174b6e",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "3.221.14.223",
        "ips": ["52.7.29.251", "3.221.14.223"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635ef9233d72934a4d174b69",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:22:28.630Z",
        "openPortLastModifiedDate": "2022-10-30T22:22:28.630Z",
        "configLastModifiedDate": "2022-10-30T22:22:28.630Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635f012f3d72934a4d1763a7",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635efb1e3d72934a4d174f9d",
      "date": null,
      "createdDate": "2022-10-30T22:56:47.777",
      "orgId": 1,
      "title": "New Vulnerabilities has been found for the domain: cyfirma.com",
      "description":
          "You have software php 5.2.17, http_server 2.2.15, jquery cloudflare running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">GCMAN</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">RTM</span>, <span class=\"active-txt TA\">Stone Panda</span>, <span class=\"active-txt TA\">TATestFORAsset</span>, <span class=\"active-txt TA\">Test_New_ThreatActor</span>",
      "riskScore": 9,
      "source": "cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:30:54.766Z",
        "lastModifiedDate": "2022-10-30T22:30:54.766Z",
        "id": "635efb1e3d72934a4d174f9d",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "cyfirma.com",
        "ip": "35.72.96.209",
        "ips": ["54.249.31.228", "35.72.96.209"],
        "source": "cyfirma.com",
        "sourceDataElement":
            "{Date=[Sun, 30 Oct 2022 21:59:27 GMT], Content-Type=[text/html; charset=UTF-8], Transfer-Encoding=[chunked], Connection=[keep-alive], set-cookie=[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly], expires=[Thu, 19 Nov 1981 08:52:00 GMT], Cache-Control=[no-store, no-cache, must-revalidate], pragma=[no-cache], access-control-allow-origin=[https://www.cyfirma.com/], link=[<https://www.cyfirma.com/wp-json/>; rel=\"https://api.w.org/\", <https://www.cyfirma.com/wp-json/wp/v2/pages/13>; rel=\"alternate\"; type=\"application/json\", <https://www.cyfirma.com/>; rel=shortlink], vary=[Accept-Encoding], CF-Cache-Status=[DYNAMIC], Server=[cloudflare], CF-RAY=[76276afbddbef33b-BOM]}",
        "software": "php 5.2.17, http_server 2.2.15, jquery ",
        "softwareVersion": null,
        "server": "cloudflare",
        "serverVersion": null,
        "technologies": {
          "php": "5.2.17",
          "http.server": "2.2.15",
          "jquery": ""
        },
        "technologyList": [
          "http server",
          "php",
          "cloudflare",
          "http_server",
          "jquery"
        ],
        "technologyStack": null,
        "cookies":
            "[PHPSESSID=oh8v2irvutcosbg3fb2lka1db1; path=/; secure; HttpOnly]",
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": true,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [
          "CVE-2014-0118",
          "CVE-2014-0238",
          "CVE-2011-1148",
          "CVE-2011-4415",
          "CVE-2014-0231",
          "CVE-2016-5387",
          "CVE-2014-3981",
          "CVE-2014-0237",
          "CVE-2014-0236",
          "CVE-2017-9224",
          "CVE-2016-2554",
          "CVE-2017-7963",
          "CVE-2016-4975",
          "CVE-2017-9226",
          "CVE-2011-1939",
          "CVE-2016-1903",
          "CVE-2006-7243",
          "CVE-2011-1153",
          "CVE-2022-28615",
          "CVE-2011-2483",
          "CVE-2011-1398",
          "CVE-2014-0226",
          "CVE-2010-2068",
          "CVE-2013-6501",
          "CVE-2018-7584",
          "CVE-2018-14851",
          "CVE-2019-9024",
          "CVE-2019-9023",
          "CVE-2019-9020",
          "CVE-2019-9021",
          "CVE-2014-9705",
          "CVE-2016-3185",
          "CVE-2021-34798",
          "CVE-2021-40438",
          "CVE-2013-6712",
          "CVE-2013-2110",
          "CVE-2022-28614",
          "CVE-2011-0708",
          "CVE-2013-1824",
          "CVE-2015-8935",
          "CVE-2018-15132",
          "CVE-2014-0207",
          "CVE-2012-2311",
          "CVE-2016-7413",
          "CVE-2016-7414",
          "CVE-2011-4885",
          "CVE-2016-7411",
          "CVE-2016-7412",
          "CVE-2016-5114",
          "CVE-2016-8743",
          "CVE-2014-5459",
          "CVE-2016-7417",
          "CVE-2016-7418",
          "CVE-2016-7416",
          "CVE-2022-22721",
          "CVE-2012-2687",
          "CVE-2012-2688",
          "CVE-2022-22720",
          "CVE-2016-8612",
          "CVE-2011-3368",
          "CVE-2014-3668",
          "CVE-2014-3669",
          "CVE-2014-9767",
          "CVE-2013-4635",
          "CVE-2010-4699",
          "CVE-2017-9788",
          "CVE-2015-9253",
          "CVE-2017-12933",
          "CVE-2018-14883",
          "CVE-2015-8835",
          "CVE-2015-4598",
          "CVE-2015-4599",
          "CVE-2015-4116",
          "CVE-2016-10712",
          "CVE-2015-8838",
          "CVE-2012-2336",
          "CVE-2016-10159",
          "CVE-2016-10158",
          "CVE-2016-9138",
          "CVE-2016-9137",
          "CVE-2016-10397",
          "CVE-2011-0421",
          "CVE-2022-22719",
          "CVE-2016-10161",
          "CVE-2016-9935",
          "CVE-2012-0831",
          "CVE-2017-9798",
          "CVE-2016-9934",
          "CVE-2011-0419",
          "CVE-2012-0031",
          "CVE-2015-4147",
          "CVE-2015-4026",
          "CVE-2011-0755",
          "CVE-2015-4148",
          "CVE-2011-0754",
          "CVE-2018-19520",
          "CVE-2011-0753",
          "CVE-2011-3348",
          "CVE-2011-4317",
          "CVE-2016-3141",
          "CVE-2016-3142",
          "CVE-2017-11145",
          "CVE-2013-7327",
          "CVE-2017-11142",
          "CVE-2017-11144",
          "CVE-2015-0228",
          "CVE-2017-11143",
          "CVE-2015-5590",
          "CVE-2015-4021",
          "CVE-2015-4022",
          "CVE-2015-8865",
          "CVE-2015-4024",
          "CVE-2013-5704",
          "CVE-2015-4025",
          "CVE-2015-5589",
          "CVE-2019-9637",
          "CVE-2014-4721",
          "CVE-2016-4342",
          "CVE-2016-4343",
          "CVE-2019-9639",
          "CVE-2019-9638",
          "CVE-2012-1823",
          "CVE-2014-3515",
          "CVE-2022-30556",
          "CVE-2012-0057",
          "CVE-2012-0053",
          "CVE-2017-7272",
          "CVE-2015-4600",
          "CVE-2011-3607",
          "CVE-2015-4601",
          "CVE-2019-9641",
          "CVE-2015-4602",
          "CVE-2021-39275",
          "CVE-2015-4603",
          "CVE-2015-4604",
          "CVE-2015-4605",
          "CVE-2014-3587",
          "CVE-2014-2497",
          "CVE-2009-4418",
          "CVE-2008-0455",
          "CVE-2014-4670",
          "CVE-2015-2787",
          "CVE-2012-3450",
          "CVE-2010-4657",
          "CVE-2015-2783",
          "CVE-2016-5094",
          "CVE-2015-8879",
          "CVE-2016-5093",
          "CVE-2015-8877",
          "CVE-2016-5096",
          "CVE-2016-5095",
          "CVE-2012-2376",
          "CVE-2015-3183",
          "CVE-2012-4558",
          "CVE-2012-4557",
          "CVE-2016-5773",
          "CVE-2016-5772",
          "CVE-2016-5771",
          "CVE-2016-5770",
          "CVE-2010-4409",
          "CVE-2017-16642",
          "CVE-2015-0231",
          "CVE-2022-31628",
          "CVE-2015-8994",
          "CVE-2015-8873",
          "CVE-2015-0232",
          "CVE-2022-31629",
          "CVE-2015-8874",
          "CVE-2015-1351",
          "CVE-2012-2143",
          "CVE-2016-6292",
          "CVE-2015-1352",
          "CVE-2016-6174",
          "CVE-2016-6295",
          "CVE-2012-2386",
          "CVE-2016-6294",
          "CVE-2016-6291",
          "CVE-2016-6290",
          "CVE-2011-3267",
          "CVE-2011-3268",
          "CVE-2016-6297",
          "CVE-2014-9427",
          "CVE-2016-6296",
          "CVE-2014-9426",
          "CVE-2016-5769",
          "CVE-2013-6438",
          "CVE-2014-9425",
          "CVE-2016-5768",
          "CVE-2012-0883",
          "CVE-2017-11628",
          "CVE-2012-1171",
          "CVE-2015-3412",
          "CVE-2012-1172",
          "CVE-2015-3411",
          "CVE-2022-28330",
          "CVE-2016-7130",
          "CVE-2016-7131",
          "CVE-2012-3365",
          "CVE-2016-4541",
          "CVE-2016-4540",
          "CVE-2016-6289",
          "CVE-2016-4543",
          "CVE-2016-4542",
          "CVE-2018-20783",
          "CVE-2016-7132",
          "CVE-2016-6288",
          "CVE-2014-9653",
          "CVE-2014-9652",
          "CVE-2011-1092",
          "CVE-2014-3670",
          "CVE-2015-4642",
          "CVE-2011-1469",
          "CVE-2015-4643",
          "CVE-2011-1468",
          "CVE-2015-4644",
          "CVE-2011-1467",
          "CVE-2012-3499",
          "CVE-2016-7127",
          "CVE-2018-17082",
          "CVE-2016-7128",
          "CVE-2016-7125",
          "CVE-2016-7126",
          "CVE-2011-1466",
          "CVE-2016-7124",
          "CVE-2011-1464",
          "CVE-2016-4538",
          "CVE-2016-4537",
          "CVE-2013-1643",
          "CVE-2016-4539",
          "CVE-2017-3167",
          "CVE-2022-29404",
          "CVE-2012-0789",
          "CVE-2012-0788",
          "CVE-2017-3169",
          "CVE-2016-7129",
          "CVE-2015-2348",
          "CVE-2015-0273",
          "CVE-2015-2331",
          "CVE-2021-44790",
          "CVE-2018-19396",
          "CVE-2018-19395",
          "CVE-2013-6420",
          "CVE-2011-1471",
          "CVE-2016-7478",
          "CVE-2011-1470",
          "CVE-2011-2202",
          "CVE-2014-9912",
          "CVE-2013-4248",
          "CVE-2010-1452",
          "CVE-2013-1896",
          "CVE-2014-8142",
          "CVE-2015-3307",
          "CVE-2017-7890",
          "CVE-2016-4070",
          "CVE-2011-4718",
          "CVE-2015-3330",
          "CVE-2014-0098",
          "CVE-2014-4698",
          "CVE-2014-3487",
          "CVE-2018-10546",
          "CVE-2013-1862",
          "CVE-2011-3182",
          "CVE-2014-3480",
          "CVE-2018-10545",
          "CVE-2018-10549",
          "CVE-2018-10548",
          "CVE-2018-10547",
          "CVE-2022-31813",
          "CVE-2015-6832",
          "CVE-2011-3639",
          "CVE-2015-6831",
          "CVE-2015-6834",
          "CVE-2015-6833",
          "CVE-2015-6836",
          "CVE-2015-7804",
          "CVE-2015-6835",
          "CVE-2015-7803",
          "CVE-2015-6838",
          "CVE-2015-6837",
          "CVE-2016-5399",
          "CVE-2014-3478",
          "CVE-2014-3597",
          "CVE-2014-3479",
          "CVE-2017-7679",
          "CVE-2014-2020",
          "CVE-2011-3192",
          "CVE-2015-3329",
          "CVE-2013-1635",
          "CVE-2018-1302",
          "CVE-2018-1301",
          "CVE-2018-1303"
        ],
        "cveDetails": [
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-2068",
            "description":
                " mod_proxy_http.c in mod_proxy_http in the Apache HTTP Server 2.2.9 through 2.2.15, 2.3.4-alpha, and 2.3.5-alpha on Windows, NetWare, and OS/2, in certain configurations involving proxy worker pools, does not properly detect timeouts, which allows remote attackers to obtain a potentially sensitive response intended for a different client in opportunistic circumstances via a normal HTTP request..",
            "vendors": ["apache", "ibm", "novell", "microsoft"],
            "products": ["http server", "netware", "windows", "os2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-2110",
            "description":
                " Heap-based buffer overflow in the php_quot_print_encode function in ext/standard/quot_print.c in PHP before 5.3.26 and 5.4.x before 5.4.16 allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a crafted argument to the quoted_printable_encode function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2018-10549",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. exif_read_data in ext/exif/exif.c has an out-of-bounds read for crafted JPEG data because exif_iif_add_value mishandles the case of a MakerNote that lacks a final '\\0' character..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-10548",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. ext/ldap/ldap.c allows remote LDAP servers to cause a denial of service (NULL pointer dereference and application crash) because of mishandling of the ldap_get_dn return value..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-3141",
            "description":
                " Use-after-free vulnerability in wddx.c in the WDDX extension in PHP before 5.5.33 and 5.6.x before 5.6.19 allows remote attackers to cause a denial of service (memory corruption and application crash) or possibly have unspecified other impact by triggering a wddx_deserialize call on XML data containing a crafted var element..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.7,
            "cveNo": "CVE-2018-10545",
            "description":
                " An issue was discovered in PHP before 5.6.35, 7.0.x before 7.0.29, 7.1.x before 7.1.16, and 7.2.x before 7.2.4. Dumpable FPM child processes allow bypassing opcache access controls because fpm_unix.c makes a PR_SET_DUMPABLE prctl call, allowing one user (in a multiuser environment) to obtain sensitive information from the process memory of a second user's PHP applications by running gcore on the PID of the PHP-FPM worker process..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-0118",
            "description":
                " The deflate_in_filter function in mod_deflate.c in the mod_deflate module in the Apache HTTP Server before 2.4.10, when request body decompression is enabled, allows remote attackers to cause a denial of service (resource consumption) via crafted request data that decompresses to a much larger size..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-10546",
            "description":
                " An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. An infinite loop exists in ext/iconv/iconv.c because the iconv stream filter does not reject invalid multibyte sequences..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.4,
            "cveNo": "CVE-2017-7272",
            "description":
                " PHP through 7.1.11 enables potential SSRF in applications that accept an fsockopen or pfsockopen hostname argument with an expectation that the port number is constrained. Because a :port syntax is recognized, fsockopen will use the port number that is specified in the hostname argument, instead of the port number in the second argument of the function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-9798",
            "description":
                " Apache httpd allows remote attackers to read secret data from process memory if the Limit directive can be set in a user's .htaccess file, or if httpd.conf has certain misconfigurations, aka Optionsbleed. This affects the Apache HTTP Server through 2.2.34 and 2.4.x through 2.4.27. The attacker sends an unauthenticated OPTIONS HTTP request when attempting to read secret data. This is a use-after-free issue and thus secret data is not always sent, and the specific data depends on many factors including configuration. Exploitation with .htaccess can be blocked with a patch to the ap_limit_section function in server/core.c..",
            "vendors": ["apache", "debian"],
            "products": ["http server"],
            "exploits": [
              "webapps : Linux : 42745 Apache &lt; 2.2.34 / &lt; 2.4.27 - OPTIONS Memory Leak"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-0231",
            "description":
                " Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages improper handling of duplicate numerical keys within the serialized properties of an object.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2014-8142...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-0232",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/824.html\">CWE-824: Access of Uninitialized Pointer</a>..  The exif_process_unicode function in ext/exif/exif.c in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5 allows remote attackers to execute arbitrary code or cause a denial of service (uninitialized pointer free and application crash) via crafted EXIF data in a JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-3183",
            "description":
                " The chunked transfer coding implementation in the Apache HTTP Server before 2.4.14 does not properly parse chunk headers, which allows remote attackers to conduct HTTP request smuggling attacks via a crafted request, related to mishandling of large chunk-size values and invalid chunk-extension characters in modules/http/http_filters.c..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.4,
            "cveNo": "CVE-2011-2202",
            "description":
                " The rfc1867_post_handler function in main/rfc1867.c in PHP before 5.3.7 does not properly restrict filenames in multipart/form-data POST requests, which allows remote attackers to conduct absolute path traversal attacks, and possibly create or overwrite arbitrary files, via a crafted upload request, related to a \"file path injection vulnerability.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-4557",
            "description":
                " The mod_proxy_ajp module in the Apache HTTP Server 2.2.12 through 2.2.21 places a worker node into an error state upon detection of a long request-processing time, which allows remote attackers to cause a denial of service (worker consumption) via an expensive request..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.1,
            "cveNo": "CVE-2013-1862",
            "description":
                " mod_rewrite.c in the mod_rewrite module in the Apache HTTP Server 2.2.x before 2.2.25 writes data to a log file without sanitizing non-printable characters, which might allow remote attackers to execute arbitrary commands via an HTTP request containing an escape sequence for a terminal emulator..",
            "vendors": ["apache", "oracle", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2022-28330",
            "description":
                " Apache HTTP Server 2.4.53 and earlier on Windows may read beyond bounds when configured to process requests with the mod_isapi module..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-4248",
            "description":
                " The openssl_x509_parse function in openssl.c in the OpenSSL module in PHP before 5.4.18 and 5.5.x before 5.5.2 does not properly handle a '\\0' character in a domain name in the Subject Alternative Name field of an X.509 certificate, which allows man-in-the-middle attackers to spoof arbitrary SSL servers via a crafted certificate issued by a legitimate Certification Authority, a related issue to CVE-2009-2408..",
            "vendors": ["php", "canonical", "redhat"],
            "products": ["enterprise_linux", "php", "ubuntu_linux"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-8835",
            "description":
                " The make_http_soap_request function in ext/soap/php_http.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 does not properly retrieve keys, which allows remote attackers to cause a denial of service (NULL pointer dereference, type confusion, and application crash) or possibly execute arbitrary code via crafted serialized data representing a numerically indexed _cookies array, related to the SoapClient::__call method in ext/soap/soap.c...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7418",
            "description":
                " The php_wddx_push_element function in ext/wddx/wddx.c in PHP before 5.6.26 and 7.x before 7.0.11 allows remote attackers to cause a denial of service (invalid pointer access and out-of-bounds read) or possibly have unspecified other impact via an incorrect boolean element in a wddxPacket XML document, leading to mishandling in a wddx_deserialize call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-2311",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.13 and 5.4.x before 5.4.3, when configured as a CGI script (aka php-cgi), does not properly handle query strings that contain a %3D sequence but no = (equals sign) character, which allows remote attackers to execute arbitrary code by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'd' case.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1823..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7414",
            "description":
                " The ZIP signature-verification feature in PHP before 5.6.26 and 7.x before 7.0.11 does not ensure that the uncompressed_filesize field is large enough, which allows remote attackers to cause a denial of service (out-of-bounds memory access) or possibly have unspecified other impact via a crafted PHAR archive, related to ext/phar/util.c and ext/phar/zip.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7416",
            "description":
                " ext/intl/msgformat/msgformat_format.c in PHP before 5.6.26 and 7.x before 7.0.11 does not properly restrict the locale length provided to the Locale class in the ICU library, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a MessageFormatter::formatMessage call with a long first argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7417",
            "description":
                " ext/spl/spl_array.c in PHP before 5.6.26 and 7.x before 7.0.11 proceeds with SplArray unserialization without validating a return value and data type, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7411",
            "description":
                " ext/standard/var_unserializer.re in PHP before 5.6.26 mishandles object-deserialization failures, which allows remote attackers to cause a denial of service (memory corruption) or possibly have unspecified other impact via an unserialize call that references a partially constructed object..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-7412",
            "description":
                " ext/mysqlnd/mysqlnd_wireprotocol.c in PHP before 5.6.26 and 7.x before 7.0.11 does not verify that a BIT field has the UNSIGNED_FLAG flag, which allows remote MySQL servers to cause a denial of service (heap-based buffer overflow) or possibly have unspecified other impact via crafted field metadata..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7413",
            "description":
                " Use-after-free vulnerability in the wddx_stack_destroy function in ext/wddx/wddx.c in PHP before 5.6.26 and 7.x before 7.0.11 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a wddxPacket XML document that lacks an end-tag for a recordset field element, leading to mishandling in a wddx_deserialize call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1468",
            "description":
                " Multiple memory leaks in the OpenSSL extension in PHP before 5.3.6 might allow remote attackers to cause a denial of service (memory consumption) via (1) plaintext data to the openssl_encrypt function or (2) ciphertext data to the openssl_decrypt function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1469",
            "description":
                " Unspecified vulnerability in the Streams component in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) by accessing an ftp:// URL during use of an HTTP proxy with the FTP wrapper..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0421",
            "description":
                " Per: http://cwe.mitre.org/data/definitions/476.html\r\n'CWE-476: NULL Pointer Dereference'..  The _zip_name_locate function in zip_name_locate.c in the Zip extension in PHP before 5.3.6 does not properly handle a ZIPARCHIVE::FL_UNCHANGED argument, which might allow context-dependent attackers to cause a denial of service (NULL pointer dereference) via an empty ZIP archive that is processed with a (1) locateName or (2) statName operation..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2012-2688",
            "description":
                " Unspecified vulnerability in the _php_stream_scandir function in the stream implementation in PHP before 5.3.15 and 5.4.x before 5.4.5 has unknown impact and remote attack vectors, related to an \"overflow.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2012-2687",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the make_variant_list function in mod_negotiation.c in the mod_negotiation module in the Apache HTTP Server 2.4.x before 2.4.3, when the MultiViews option is enabled, allow remote attackers to inject arbitrary web script or HTML via a crafted filename that is not properly handled during construction of a variant list..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-1466",
            "description":
                " Integer overflow in the SdnToJulian function in the Calendar extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via a large integer in the first argument to the cal_from_jd function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-7679",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_mime can read one byte past the end of a buffer when sending a malicious Content-Type response header..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1464",
            "description":
                " Buffer overflow in the strval function in PHP before 5.3.6, when the precision configuration option has a large value, might allow context-dependent attackers to cause a denial of service (application crash) via a small numerical value in the argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3182",
            "description":
                " Per: http://cwe.mitre.org/data/definitions/476.html \r\n'CWE-476: NULL Pointer Dereference'..  PHP before 5.3.7 does not properly check the return values of the malloc, calloc, and realloc library functions, which allows context-dependent attackers to cause a denial of service (NULL pointer dereference and application crash) or trigger a buffer overflow by leveraging the ability to provide an arbitrary value for a function argument, related to (1) ext/curl/interface.c, (2) ext/date/lib/parse_date.c, (3) ext/date/lib/parse_iso_intervals.c, (4) ext/date/lib/parse_tz.c, (5) ext/date/lib/timelib.c, (6) ext/pdo_odbc/pdo_odbc.c, (7) ext/reflection/php_reflection.c, (8) ext/soap/php_sdl.c, (9) ext/xmlrpc/libxmlrpc/base64.c, (10) TSRM/tsrm_win32.c, and (11) the strtotime function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4148",
            "description":
                " The do_soap_call function in ext/soap/soap.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 does not verify that the uri property is a string, which allows remote attackers to obtain sensitive information by providing crafted serialized data with an int data type, related to a \"type confusion\" issue..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5773",
            "description":
                " php_zip.c in the zip extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to execute arbitrary code or cause a denial of service (use-after-free and application crash) via crafted serialized data containing a ZipArchive object..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2022-31813",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may not send the X-Forwarded-* headers to the origin server based on client side Connection header hop-by-hop mechanism. This may be used to bypass IP based authentication on the origin server/application..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5771",
            "description":
                " spl_array.c in the SPL extension in PHP before 5.5.37 and 5.6.x before 5.6.23 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to execute arbitrary code or cause a denial of service (use-after-free and application crash) via crafted serialized data..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5770",
            "description":
                " Integer overflow in the SplFileObject::fread function in spl_directory.c in the SPL extension in PHP before 5.5.37 and 5.6.x before 5.6.23 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large integer argument, a related issue to CVE-2016-5096..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2015-8935",
            "description":
                " The sapi_header_op function in main/SAPI.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 supports deprecated line folding without considering browser compatibility, which allows remote attackers to conduct cross-site scripting (XSS) attacks against Internet Explorer by leveraging (1) %0A%20 or (2) %0D%0A%20 mishandling in the header function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-20783",
            "description":
                " In PHP before 5.6.39, 7.x before 7.0.33, 7.1.x before 7.1.25, and 7.2.x before 7.2.13, a buffer over-read in PHAR reading functions may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse a .phar file. This is related to phar_parse_pharfile in ext/phar/phar.c..",
            "vendors": ["opensuse", "php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4147",
            "description":
                " The SoapClient::__call method in ext/soap/soap.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 does not verify that __default_headers is an array, which allows remote attackers to execute arbitrary code by providing crafted serialized data with an unexpected data type, related to a \"type confusion\" issue..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.4,
            "cveNo": "CVE-2012-0057",
            "description":
                " PHP before 5.3.9 has improper libxslt security settings, which allows remote attackers to create arbitrary files via a crafted XSLT stylesheet that uses the libxslt output extension..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-3167",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, use of the ap_get_basic_auth_pw() by third-party modules outside of the authentication phase may lead to authentication requirements being bypassed..",
            "vendors": [
              "apple",
              "apache",
              "oracle",
              "debian",
              "redhat",
              "netapp"
            ],
            "products": [
              "http server",
              "oncommand unified manager",
              "storagegrid",
              "secure global desktop",
              "jboss core services",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-0053",
            "description":
                " protocol.c in the Apache HTTP Server 2.2.x through 2.2.21 does not properly restrict header information during construction of Bad Request (aka 400) error documents, which allows remote attackers to obtain the values of HTTPOnly cookies via vectors involving a (1) long or (2) malformed header in conjunction with crafted web script..",
            "vendors": ["apache", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "storage"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.9,
            "cveNo": "CVE-2012-0883",
            "description":
                " envvars (aka envvars-std) in the Apache HTTP Server before 2.4.2 places a zero-length directory name in the LD_LIBRARY_PATH, which allows local users to gain privileges via a Trojan horse DSO in the current working directory during execution of apachectl..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-3169",
            "description":
                " In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_ssl may dereference a NULL pointer when third-party modules call ap_hook_process_connection() during an HTTP request to an HTTPS port..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-4070",
            "description":
                " ** DISPUTED ** Integer overflow in the php_raw_url_encode function in ext/standard/url.c in PHP before 5.5.34, 5.6.x before 5.6.20, and 7.x before 7.0.5 allows remote attackers to cause a denial of service (application crash) via a long string to the rawurlencode function. NOTE: the vendor says \"Not sure if this qualifies as security issue (probably not).\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4024",
            "description":
                " Algorithmic complexity vulnerability in the multipart_buffer_headers function in main/rfc1867.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 allows remote attackers to cause a denial of service (CPU consumption) via crafted form data that triggers an improper order-of-growth outcome..",
            "vendors": ["apple", "oracle", "hp", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "linux",
              "php",
              "system_management_homepage",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2021-44790",
            "description":
                " A carefully crafted request body can cause a buffer overflow in the mod_lua multipart parser (r:parsebody() called from Lua scripts). The Apache httpd team is not aware of an exploit for the vulnerabilty though it might be possible to craft one. This issue affects Apache HTTP Server 2.4.51 and earlier..",
            "vendors": ["tenable", "apache", "oracle", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "communications operations monitor",
              "cloud backup",
              "instantis enterprisetrack",
              "tenable sc",
              "communications session route manager",
              "communications element manager",
              "communications session report manager"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.5,
            "cveNo": "CVE-2018-14851",
            "description":
                " exif_process_IFD_in_MAKERNOTE in ext/exif/exif.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8 allows remote attackers to cause a denial of service (out-of-bounds read and application crash) via a crafted JPEG file..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-3639",
            "description":
                " The mod_proxy module in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x before 2.2.18, when the Revision 1179239 patch is in place, does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers by using the HTTP/0.9 protocol with a malformed URI containing an initial @ (at sign) character.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2011-3368..",
            "vendors": ["apache"],
            "products": [
              "http_server2.0a1",
              "http_server2.0a2",
              "http_server2.0a5",
              "http_server2.0a6",
              "http_server2.0a3",
              "http_server2.0a4",
              "http_server2.0a9",
              "http_server2.0a7",
              "http_server2.0a8",
              "http_server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2013-1635",
            "description":
                " ext/soap/soap.c in PHP before 5.3.22 and 5.4.x before 5.4.13 does not validate the relationship between the soap.wsdl_cache_dir directive and the open_basedir directive, which allows remote attackers to bypass intended access restrictions by triggering the creation of cached SOAP WSDL files in an arbitrary directory..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0231",
            "description":
                " The mod_cgid module in the Apache HTTP Server before 2.4.10 does not have a timeout mechanism, which allows remote attackers to cause a denial of service (process hang) via a request to a CGI script that does not read from its stdin file descriptor..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2016-4975",
            "description":
                " Possible CRLF injection allowing HTTP response splitting attacks for sites which use mod_userdir. This issue was mitigated by changes made in 2.4.25 and 2.2.32 which prohibit CR or LF injection into the \"Location\" or other outbound header key or value. Fixed in Apache HTTP Server 2.4.25 (Affected 2.4.1-2.4.23). Fixed in Apache HTTP Server 2.2.32 (Affected 2.2.0-2.2.31)..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-1824",
            "description":
                " The SOAP parser in PHP before 5.3.22 and 5.4.x before 5.4.12 allows remote attackers to read arbitrary files via a SOAP WSDL file containing an XML external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue in the soap_xmlParseFile and soap_xmlParseMemory functions..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2012-0031",
            "description":
                " scoreboard.c in the Apache HTTP Server 2.2.21 and earlier might allow local users to cause a denial of service (daemon crash during shutdown) or possibly have unspecified other impact by modifying a certain type field within a scoreboard shared memory segment, leading to an invalid call to the free function..",
            "vendors": ["apache", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "storage"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2013-6501",
            "description":
                " The default soap.wsdl_cache_dir setting in (1) php.ini-production and (2) php.ini-development in PHP through 5.6.7 specifies the /tmp directory, which makes it easier for local users to conduct WSDL injection attacks by creating a file under /tmp with a predictable filename that is used by the get_sdl function in ext/soap/php_sdl.c..",
            "vendors": ["suse", "php"],
            "products": ["linux_enterprise_server", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-8865",
            "description":
                " The file_check_mem function in funcs.c in file before 5.23, as used in the Fileinfo component in PHP before 5.5.34, 5.6.x before 5.6.20, and 7.x before 7.0.5, mishandles continuation-level jumps, which allows context-dependent attackers to cause a denial of service (buffer overflow and application crash) or possibly execute arbitrary code via a crafted magic file..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2013-6420",
            "description":
                " The asn1_time_to_time_t function in ext/openssl/openssl.c in PHP before 5.3.28, 5.4.x before 5.4.23, and 5.5.x before 5.5.7 does not properly parse (1) notBefore and (2) notAfter timestamps in X.509 certificates, which allows remote attackers to execute arbitrary code or cause a denial of service (memory corruption) via a crafted certificate that is not properly handled by the openssl_x509_parse function..",
            "vendors": ["apple", "opensuse", "php"],
            "products": ["mac_os_x", "opensuse", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3487",
            "description":
                " The cdf_read_property_info function in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, does not properly validate a stream offset, which allows remote attackers to cause a denial of service (application crash) via a crafted CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-22719",
            "description":
                " A carefully crafted request body can cause a read to a random memory area which could cause the process to crash. This issue affects Apache HTTP Server 2.4.52 and earlier..",
            "vendors": ["apache", "oracle"],
            "products": ["zfs storage appliance kit", "http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-6174",
            "description":
                " applications/core/modules/front/system/content.php in Invision Power Services IPS Community Suite (aka Invision Power Board, IPB, or Power Board) before 4.1.13, when used with PHP before 5.4.24 or 5.5.x before 5.5.8, allows remote attackers to execute arbitrary code via the content_class parameter..",
            "vendors": ["invisioncommunity", "php"],
            "products": ["invision_power_board", "php"],
            "exploits": [
              "WebApps : PHP : IPS Community Suite 4.1.12.3 - PHP Code Injection"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9138",
            "description":
                " PHP through 5.6.27 and 7.x through 7.0.12 mishandles property modification during __wakeup processing, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data, as demonstrated by Exception::__toString with DateInterval::__wakeup..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.5,
            "cveNo": "CVE-2022-31628",
            "description":
                " In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the phar uncompressor code would recursively uncompress \"quines\" gzip files, resulting in an infinite loop..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2022-31629",
            "description":
                " In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the vulnerability enables network and same-site attackers to set a standard insecure cookie in the victim's browser which is treated as a `__Host-` or `__Secure-` cookie by PHP applications..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5768",
            "description":
                " Double free vulnerability in the _php_mb_regex_ereg_replace_exec function in php_mbregex.c in the mbstring extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allows remote attackers to execute arbitrary code or cause a denial of service (application crash) by leveraging a callback exception..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.8,
            "cveNo": "CVE-2015-2783",
            "description":
                " ext/phar/phar.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (buffer over-read and application crash) via a crafted length value in conjunction with crafted serialized data in a phar archive, related to the phar_parse_metadata and phar_parse_pharfile functions..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9137",
            "description":
                " Use-after-free vulnerability in the CURLFile implementation in ext/curl/curl_file.c in PHP before 5.6.27 and 7.x before 7.0.12 allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data that is mishandled during __wakeup processing..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-2020",
            "description":
                " ext/gd/gd.c in PHP 5.5.x before 5.5.9 does not check data types, which might allow remote attackers to obtain sensitive information by using a (1) string or (2) array data type in place of a numeric data type, as demonstrated by an imagecrop function call with a string for the x dimension value, a different vulnerability than CVE-2013-7226..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2011-1939",
            "description":
                " SQL injection vulnerability in Zend Framework 1.10.x before 1.10.9 and 1.11.x before 1.11.6 when using non-ASCII-compatible encodings in conjunction PDO_MySql in PHP before 5.3.6..",
            "vendors": ["debian", "zend", "php"],
            "products": ["debian_linux", "php", "zend_framework"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-2787",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages use of the unset function within an __wakeup function, a related issue to CVE-2015-0231..",
            "vendors": ["apple", "opensuse", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "opensuse",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2021-34798",
            "description":
                " Malformed requests may cause the server to dereference a NULL pointer. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["tenable", "apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "ruggedcom nms",
              "communications cloud native core network function cloud native environment",
              "http server",
              "cloud backup",
              "peoplesoft enterprise peopletools",
              "sinec nms",
              "clustered data ontap",
              "storagegrid",
              "sinema server",
              "instantis enterprisetrack",
              "tenable sc",
              "enterprise manager base platform",
              "sinema remote connect server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6831",
            "description":
                " Multiple use-after-free vulnerabilities in SPL in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allow remote attackers to execute arbitrary code via vectors involving (1) ArrayObject, (2) SplObjectStorage, and (3) SplDoublyLinkedList, which are mishandled during unserialization..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6832",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the SPL unserialize implementation in ext/spl/spl_array.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to execute arbitrary code via crafted serialized data that triggers misuse of an array field..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6833",
            "description":
                " Directory traversal vulnerability in the PharData class in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to write to arbitrary files via a .. (dot dot) in a ZIP archive entry that is mishandled during an extractTo call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-6834",
            "description":
                " Multiple use-after-free vulnerabilities in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 allow remote attackers to execute arbitrary code via vectors related to (1) the Serializable interface, (2) the SplObjectStorage class, and (3) the SplDoublyLinkedList class, which are mishandled during unserialization...  <a href=\"http://cwe.mitre.org/data/definitions/502.html\">CWE-502: Deserialization of Untrusted Data</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-6835",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  The session deserializer in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 mishandles multiple php_var_unserialize calls, which allow remote attackers to execute arbitrary code or cause a denial of service (use-after-free) via crafted session content..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-4885",
            "description":
                " PHP before 5.3.9 computes hash values for form parameters without restricting the ability to trigger hash collisions predictably, which allows remote attackers to cause a denial of service (CPU consumption) by sending many crafted parameters..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 18305 PHP Hash Table Collision - Denial of Service (PoC)"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6837",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The xsl_ext_function_php function in ext/xsl/xsltprocessor.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13, when libxml2 before 2.9.2 is used, does not consider the possibility of a NULL valuePop return value before proceeding with a free operation during initial error checking, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted XML document, a different vulnerability than CVE-2015-6838..",
            "vendors": ["xmlsoft", "php"],
            "products": ["php", "libxml2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-6838",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The xsl_ext_function_php function in ext/xsl/xsltprocessor.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13, when libxml2 before 2.9.2 is used, does not consider the possibility of a NULL valuePop return value before proceeding with a free operation after the principal argument loop, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted XML document, a different vulnerability than CVE-2015-6837..",
            "vendors": ["xmlsoft", "php"],
            "products": ["php", "libxml2"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-3348",
            "description":
                " The mod_proxy_ajp module in the Apache HTTP Server before 2.2.21, when used with mod_proxy_balancer in certain configurations, allows remote attackers to cause a denial of service (temporary \"error state\" in the backend server) via a malformed HTTP request..",
            "vendors": ["apache", "redhat"],
            "products": ["jboss enterprise web server", "http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-9935",
            "description":
                " The php_wddx_push_element function in ext/wddx/wddx.c in PHP before 5.6.29 and 7.x before 7.0.14 allows remote attackers to cause a denial of service (out-of-bounds read and memory corruption) or possibly have unspecified other impact via an empty boolean element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-19396",
            "description":
                " ext/standard/var_unserializer.c in PHP 5.x through 7.1.24 allows attackers to cause a denial of service (application crash) via an unserialize call for the com, dotnet, or variant class..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11143",
            "description":
                " In PHP before 5.6.31, an invalid free in the WDDX deserialization of boolean parameters could be used by attackers able to inject XML for deserialization to crash the PHP interpreter, related to an invalid free for an empty boolean element in ext/wddx/wddx.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2017-7890",
            "description":
                " The GIF decoding function gdImageCreateFromGifCtx in gd_gif_in.c in the GD Graphics Library (aka libgd), as used in PHP before 5.6.31 and 7.x before 7.1.7, does not zero colorMap arrays before use. A specially crafted GIF image could use the uninitialized tables to read ~700 bytes from the top of the stack, potentially disclosing sensitive information..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11145",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, an error in the date extension's timelib_meridian parsing code could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: the correct fix is in the e8b7698f5ee757ce2c8bd10a192a491a498f891c commit, not the bd77ac90d3bdf31ce2a5251ad92e9e75 gist..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11144",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, the openssl extension PEM sealing code did not check the return value of the OpenSSL sealing function, which could lead to a crash of the PHP interpreter, related to an interpretation conflict for a negative number in ext/openssl/openssl.c, and an OpenSSL documentation omission..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-2143",
            "description":
                " As per: http://git.php.net/?p=php-src.git;a=commitdiff;h=aab49e934de1fff046e659cbec46e3d053b41c34 and http://git.php.net/?p=php-src.git;a=commitdiff_plain;h=aab49e934de1fff046e659cbec46e3d053b41c34\r\n\r\nPHP 5.3.13 and earlier are vulnerable.\r\n..  The crypt_des (aka DES-based crypt) function in FreeBSD before 9.0-RELEASE-p2, as used in PHP, PostgreSQL, and other products, does not process the complete cleartext password if this password contains a 0x80 character, which makes it easier for context-dependent attackers to obtain access via an authentication attempt with an initial substring of the intended password, as demonstrated by a Unicode password..",
            "vendors": ["postgresql", "freebsd", "php"],
            "products": ["postgresql", "freebsd", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-1171",
            "description":
                " The libxml RSHUTDOWN function in PHP 5.x allows remote attackers to bypass the open_basedir protection mechanism and read arbitrary files via vectors involving a stream_close method call during use of a custom stream wrapper..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-0207",
            "description":
                " The cdf_read_short_sector function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, allows remote attackers to cause a denial of service (assertion failure and application exit) via a crafted CDF file..",
            "vendors": ["christos zoulas", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2012-0831",
            "description":
                " PHP before 5.3.10 does not properly perform a temporary change to the magic_quotes_gpc directive during the importing of environment variables, which makes it easier for remote attackers to conduct SQL injection attacks via a crafted request, related to main/php_variables.c, sapi/cgi/cgi_main.c, and sapi/fpm/fpm/fpm_main.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2018-17082",
            "description":
                " The Apache2 component in PHP before 5.6.38, 7.0.x before 7.0.32, 7.1.x before 7.1.22, and 7.2.x before 7.2.10 allows XSS via the body of a \"Transfer-Encoding: chunked\" request, because the bucket brigade is mishandled in the php_handler function in sapi/apache2handler/sapi_apache2.c..",
            "vendors": ["debian", "php", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-5704",
            "description":
                " The mod_headers module in the Apache HTTP Server 2.2.22 allows remote attackers to bypass \"RequestHeader unset\" directives by placing a header in the trailer portion of data sent with chunked transfer coding.  NOTE: the vendor states \"this is not a security issue in httpd as such.\".",
            "vendors": ["apple", "apache", "oracle", "canonical", "redhat"],
            "products": [
              "jboss enterprise web server",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9639",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the data_len variable..",
            "vendors": [
              "debian",
              "opensuse",
              "php",
              "canonical",
              "redhat",
              "netapp"
            ],
            "products": [
              "storage automation store",
              "php",
              "software collections"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9638",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the maker_note->offset relationship to value_len..",
            "vendors": [
              "debian",
              "opensuse",
              "php",
              "canonical",
              "redhat",
              "netapp"
            ],
            "products": [
              "storage automation store",
              "php",
              "software collections"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-4409",
            "description":
                " Integer overflow in the NumberFormatter::getSymbol (aka numfmt_get_symbol) function in PHP 5.3.3 and earlier allows context-dependent attackers to cause a denial of service (application crash) via an invalid argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-6438",
            "description":
                " The dav_xml_get_cdata function in main/util.c in the mod_dav module in the Apache HTTP Server before 2.4.8 does not properly remove whitespace characters from CDATA sections, which allows remote attackers to cause a denial of service (daemon crash) via a crafted DAV WRITE request..",
            "vendors": ["apache", "oracle"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2016-1903",
            "description":
                " The gdImageRotateInterpolated function in ext/gd/libgd/gd_interpolation.c in PHP before 5.5.31, 5.6.x before 5.6.17, and 7.x before 7.0.2 allows remote attackers to obtain sensitive information or cause a denial of service (out-of-bounds read and application crash) via a large bgd_color argument to the imagerotate function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2013-7327",
            "description":
                " The gdImageCrop function in ext/gd/gd.c in PHP 5.5.x before 5.5.9 does not check return values, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via invalid imagecrop arguments that lead to use of a NULL pointer as a return value, a different vulnerability than CVE-2013-7226..",
            "vendors": ["php", "canonical"],
            "products": ["php", "ubuntu_linux"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-0273",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Multiple use-after-free vulnerabilities in ext/date/php_date.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 allow remote attackers to execute arbitrary code via crafted serialized input containing a (1) R or (2) r type specifier in (a) DateTimeZone data handled by the php_date_timezone_initialize_from_hash function or (b) DateTime data handled by the php_date_initialize_from_hash function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9637",
            "description":
                " An issue was discovered in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. Due to the way rename() across filesystems is implemented, it is possible that file being renamed is briefly available with wrong permissions while the rename is ongoing, thus enabling unauthorized users to access the data..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-4558",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the balancer_handler function in the manager interface in mod_proxy_balancer.c in the mod_proxy_balancer module in the Apache HTTP Server 2.2.x before 2.2.24-dev and 2.4.x before 2.4.4 allow remote attackers to inject arbitrary web script or HTML via a crafted string..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4602",
            "description":
                " The __PHP_Incomplete_Class function in ext/standard/incomplete_class.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 1.2,
            "cveNo": "CVE-2011-4415",
            "description":
                " The ap_pregsub function in server/util.c in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x through 2.2.21, when the mod_setenvif module is enabled, does not restrict the size of values of environment variables, which allows local users to cause a denial of service (memory consumption or NULL pointer dereference) via a .htaccess file with a crafted SetEnvIf directive, in conjunction with a crafted HTTP request header, related to (1) the \"len +=\" statement and (2) the apr_pcalloc function call, a different vulnerability than CVE-2011-3607..",
            "vendors": ["apache"],
            "products": ["http_server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4601",
            "description":
                " PHP before 5.6.7 might allow remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to \"type confusion\" issues in (1) ext/soap/php_encoding.c, (2) ext/soap/php_http.c, and (3) ext/soap/soap.c, a different issue than CVE-2015-4600...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4600",
            "description":
                " The SoapClient implementation in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an unexpected data type, related to \"type confusion\" issues in the (1) SoapClient::__getLastRequest, (2) SoapClient::__getLastResponse, (3) SoapClient::__getLastRequestHeaders, (4) SoapClient::__getLastResponseHeaders, (5) SoapClient::__getCookies, and (6) SoapClient::__setCookie methods...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4603",
            "description":
                " The exception::getTraceAsString function in Zend/zend_exceptions.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-14883",
            "description":
                " An issue was discovered in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. An Integer Overflow leads to a heap-based buffer over-read in exif_thumbnail_extract of exif.c..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4605",
            "description":
                " The mcopy function in softmagic.c in file 5.x, as used in the Fileinfo component in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, does not properly restrict a certain offset value, which allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted string that is mishandled by a \"Python script text executable\" rule..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1153",
            "description":
                " Multiple format string vulnerabilities in phar_object.c in the phar extension in PHP 5.3.5 and earlier allow context-dependent attackers to obtain sensitive information from process memory, cause a denial of service (memory corruption), or possibly execute arbitrary code via format string specifiers in an argument to a class method, leading to an incorrect zend_throw_exception_ex call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-1452",
            "description":
                " The (1) mod_cache and (2) mod_dav modules in the Apache HTTP Server 2.2.x before 2.2.16 allow remote attackers to cause a denial of service (process crash) via a request that lacks a path..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4604",
            "description":
                " The mget function in softmagic.c in file 5.x, as used in the Fileinfo component in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, does not properly maintain a certain pointer relationship, which allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted string that is mishandled by a \"Python script text executable\" rule..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.4,
            "cveNo": "CVE-2011-3607",
            "description":
                " Integer overflow in the ap_pregsub function in server/util.c in the Apache HTTP Server 2.0.x through 2.0.64 and 2.2.x through 2.2.21, when the mod_setenvif module is enabled, allows local users to gain privileges via a .htaccess file with a crafted SetEnvIf directive, in conjunction with a crafted HTTP request header, leading to a heap-based buffer overflow..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-3597",
            "description":
                " Multiple buffer overflows in the php_parserr function in ext/standard/dns.c in PHP before 5.4.32 and 5.5.x before 5.5.16 allow remote DNS servers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted DNS record, related to the dns_get_record function and the dn_expand function.  NOTE: this issue exists because of an incomplete fix for CVE-2014-4049..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2012-3450",
            "description":
                " pdo_sql_parser.re in the PDO extension in PHP before 5.3.14 and 5.4.x before 5.4.4 does not properly determine the end of the query string during parsing of prepared statements, which allows remote attackers to cause a denial of service (out-of-bounds read and application crash) via a crafted parameter value..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2016-5114",
            "description":
                " sapi/fpm/fpm/fpm_log.c in PHP before 5.5.31, 5.6.x before 5.6.17, and 7.x before 7.0.2 misinterprets the semantics of the snprintf return value, which allows attackers to obtain sensitive information from process memory or cause a denial of service (out-of-bounds read and buffer overflow) via a long string, as demonstrated by a long URI in a configuration with custom REQUEST_URI logging..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2014-4670",
            "description":
                " Use-after-free vulnerability in ext/spl/spl_dllist.c in the SPL component in PHP through 5.5.14 allows context-dependent attackers to cause a denial of service or possibly have unspecified other impact via crafted iterator usage within applications in certain web-hosting environments...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\" target=\"_blank\">CWE-416: Use After Free</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-1467",
            "description":
                " Unspecified vulnerability in the NumberFormatter::setSymbol (aka numfmt_set_symbol) function in the Intl extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via an invalid argument, a related issue to CVE-2010-4409..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1092",
            "description":
                " Integer overflow in ext/shmop/shmop.c in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (crash) and possibly read sensitive memory via a large third argument to the shmop_read function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : Linux : 16966 PHP 5.3.6 - &#039;shmop_read()&#039; Integer Overflow Denial of Service"
            ]
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0237",
            "description":
                " The cdf_unpack_summary_info function in cdf.c in the Fileinfo component in PHP before 5.4.29 and 5.5.x before 5.5.13 allows remote attackers to cause a denial of service (performance degradation) by triggering many file_printf calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-0236",
            "description":
                " file before 5.18, as used in the Fileinfo component in PHP before 5.6.0, allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a zero root_storage value in a CDF file, related to cdf.c and readcdf.c...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-9652",
            "description":
                " The mconvert function in softmagic.c in file before 5.21, as used in the Fileinfo component in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5, does not properly handle a certain string-length field during a copy of a truncated version of a Pascal string, which might allow remote attackers to cause a denial of service (out-of-bounds memory access and application crash) via a crafted file..",
            "vendors": ["file_project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0419",
            "description":
                " Stack consumption vulnerability in the fnmatch implementation in apr_fnmatch.c in the Apache Portable Runtime (APR) library before 1.4.3 and the Apache HTTP Server before 2.2.18, and in fnmatch.c in libc in NetBSD 5.1, OpenBSD 4.8, FreeBSD, Apple Mac OS X 10.6, Oracle Solaris 10, and Android, allows context-dependent attackers to cause a denial of service (CPU and memory consumption) via *? sequences in the first argument, as demonstrated by attacks against mod_autoindex in httpd..",
            "vendors": ["apache"],
            "products": ["http server", "portable runtime"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5094",
            "description":
                " Integer overflow in the php_html_entities function in ext/standard/html.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact by triggering a large output string from the htmlspecialchars function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-8142",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in the process_nested_data function in ext/standard/var_unserializer.re in PHP before 5.4.36, 5.5.x before 5.5.20, and 5.6.x before 5.6.4 allows remote attackers to execute arbitrary code via a crafted unserialize call that leverages improper handling of duplicate keys within the serialized properties of an object, a different vulnerability than CVE-2004-1019..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4543",
            "description":
                " The exif_process_IFD_in_JPEG function in ext/exif/exif.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 does not validate IFD sizes, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via crafted header data..",
            "vendors": ["fedoraproject", "opensuse", "hp", "php"],
            "products": ["fedora", "system_management_homepage", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4542",
            "description":
                " The exif_process_IFD_TAG function in ext/exif/exif.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 does not properly construct spprintf arguments, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via crafted header data..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4541",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/125.html\">CWE-125: Out-of-bounds Read</a>..  The grapheme_strpos function in ext/intl/grapheme/grapheme_string.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a negative offset..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4540",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/125.html\">CWE-125: Out-of-bounds Read</a>..  The grapheme_stripos function in ext/intl/grapheme/grapheme_string.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a negative offset..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-7963",
            "description":
                " ** DISPUTED ** The GNU Multiple Precision Arithmetic Library (GMP) interfaces for PHP through 7.1.4 allow attackers to cause a denial of service (memory consumption and application crash) via operations on long strings. NOTE: the vendor disputes this, stating \"There is no security issue here, because GMP safely aborts in case of an OOM condition. The only attack vector here is denial of service. However, if you allow attacker-controlled, unbounded allocations you have a DoS vector regardless of GMP's OOM behavior.\".",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-3515",
            "description":
                " The SPL component in PHP before 5.4.30 and 5.5.x before 5.5.14 incorrectly anticipates that certain data structures will have the array data type after unserialization, which allows remote attackers to execute arbitrary code via a crafted string that triggers use of a Hashtable destructor, related to \"type confusion\" issues in (1) ArrayObject and (2) SPLObjectStorage..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0238",
            "description":
                " The cdf_read_property_info function in cdf.c in the Fileinfo component in PHP before 5.4.29 and 5.5.x before 5.5.13 allows remote attackers to cause a denial of service (infinite loop or out-of-bounds memory access) via a vector that (1) has zero length or (2) is too long..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2016-5399",
            "description":
                " The bzread function in ext/bz2/bz2.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (out-of-bounds write) or execute arbitrary code via a crafted bz2 archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 40155 PHP 5.5.37/5.6.23/7.0.8 - &#039;bzread()&#039; Out-of-Bounds Write"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9023",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A number of heap-based buffer over-read instances are present in mbstring regular expression functions when supplied with invalid multibyte data. These occur in ext/mbstring/oniguruma/regcomp.c, ext/mbstring/oniguruma/regexec.c, ext/mbstring/oniguruma/regparse.c, ext/mbstring/oniguruma/enc/unicode.c, and ext/mbstring/oniguruma/src/utf32_be.c when a multibyte regular expression pattern contains invalid multibyte sequences..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9020",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. Invalid input to the function xmlrpc_decode() can lead to an invalid memory access (heap out of bounds read or read after free). This is related to xml_elem_parse_buf in ext/xmlrpc/libxmlrpc/xml_element.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9021",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A heap-based buffer over-read in PHAR reading functions in the PHAR extension may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse the file name, a different vulnerability than CVE-2018-20783. This is related to phar_detect_phar_fname_ext in ext/phar/phar.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2019-9024",
            "description":
                " An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. xmlrpc_decode() can allow a hostile XMLRPC server to cause PHP to read memory outside of allocated areas in base64_decode_xmlrpc in ext/xmlrpc/libxmlrpc/base64.c..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-1643",
            "description":
                " The SOAP parser in PHP before 5.3.23 and 5.4.x before 5.4.13 allows remote attackers to read arbitrary files via a SOAP WSDL file containing an XML external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue in the soap_xmlParseFile and soap_xmlParseMemory functions.  NOTE: this vulnerability exists because of an incorrect fix for CVE-2013-1824..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-2497",
            "description":
                " The gdImageCreateFromXpm function in gdxpm.c in libgd, as used in PHP 5.4.26 and earlier, allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted color table in an XPM file..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2011-3192",
            "description":
                " The byterange filter in the Apache HTTP Server 1.3.x, 2.0.x through 2.0.64, and 2.2.x through 2.2.19 allows remote attackers to cause a denial of service (memory and CPU consumption) via a Range header that expresses multiple overlapping ranges, as exploited in the wild in August 2011, a different vulnerability than CVE-2007-0086..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2021-39275",
            "description":
                " ap_escape_quotes() may write beyond the end of a buffer when given malicious input. No included modules pass untrusted data to these functions, but third-party / external modules may. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "storagegrid",
              "sinema server",
              "cloud backup",
              "instantis enterprisetrack",
              "sinec nms",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6291",
            "description":
                " The exif_process_IFD_in_MAKERNOTE function in ext/exif/exif.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (out-of-bounds array access and memory corruption), obtain sensitive information from process memory, or possibly have unspecified other impact via a crafted JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6290",
            "description":
                " ext/session/session.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 does not properly maintain a certain hash data structure, which allows remote attackers to cause a denial of service (use-after-free) or possibly have unspecified other impact via vectors related to session deserialization..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2016-6292",
            "description":
                " The exif_process_user_comment function in ext/exif/exif.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted JPEG image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6295",
            "description":
                " ext/snmp/snmp.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 improperly interacts with the unserialize implementation and garbage collection, which allows remote attackers to cause a denial of service (use-after-free and application crash) or possibly have unspecified other impact via crafted serialized data, a related issue to CVE-2016-5773..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6294",
            "description":
                " The locale_accept_from_http function in ext/intl/locale/locale_methods.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 does not properly restrict calls to the ICU uloc_acceptLanguageFromHTTP function, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a call with a long argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-6297",
            "description":
                " Integer overflow in the php_stream_zip_opener function in ext/zip/zip_stream.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (stack-based buffer overflow) or possibly have unspecified other impact via a crafted zip:// URL..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6296",
            "description":
                " Integer signedness error in the simplestring_addn function in simplestring.c in xmlrpc-epi through 0.54.2, as used in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9, allows remote attackers to cause a denial of service (heap-based buffer overflow) or possibly have unspecified other impact via a long first argument to the PHP xmlrpc_encode_request function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3587",
            "description":
                " Integer overflow in the cdf_read_property_info function in cdf.c in file through 5.19, as used in the Fileinfo component in PHP before 5.4.32 and 5.5.x before 5.5.16, allows remote attackers to cause a denial of service (application crash) via a crafted CDF file.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1571..",
            "vendors": ["php", "christos_zoulas"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-1351",
            "description":
                " Use-after-free vulnerability in the _zend_shared_memdup function in zend_shared_alloc.c in the OPcache extension in PHP through 5.6.7 allows remote attackers to cause a denial of service or possibly have unspecified other impact via unknown vectors..",
            "vendors": ["oracle", "php"],
            "products": ["secure backup", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-1352",
            "description":
                " The build_tablename function in pgsql.c in the PostgreSQL (aka pgsql) extension in PHP through 5.6.7 does not validate token extraction for table names, which allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted name...  <a href=\"http://cwe.mitre.org/data/definitions/476.html\" rel=\"nofollow\">CWE-476: NULL Pointer Dereference</a>.",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2009-4418",
            "description":
                " The unserialize function in PHP 5.3.0 and earlier allows context-dependent attackers to cause a denial of service (resource consumption) via a deeply nested serialized variable, as demonstrated by a string beginning with a:1: followed by many {a:1: sequences..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4116",
            "description":
                " Use-after-free vulnerability in the spl_ptr_heap_insert function in ext/spl/spl_heap.c in PHP before 5.5.27 and 5.6.x before 5.6.11 allows remote attackers to execute arbitrary code by triggering a failed SplMinHeap::compare operation...  <a href=\"http://cwe.mitre.org/data/definitions/416.html\">CWE 416: Use After Free</a>.",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1398",
            "description":
                " The sapi_header_op function in main/SAPI.c in PHP before 5.3.11 and 5.4.x before 5.4.0RC2 does not check for %0D sequences (aka carriage return characters), which allows remote attackers to bypass an HTTP response-splitting protection mechanism via a crafted URL, related to improper interaction between the PHP header function and certain browsers, as demonstrated by Internet Explorer and Google Chrome..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9705",
            "description":
                " Heap-based buffer overflow in the enchant_broker_request_dict function in ext/enchant/enchant.c in PHP before 5.4.38, 5.5.x before 5.5.22, and 5.6.x before 5.6.6 allows remote attackers to execute arbitrary code via vectors that trigger creation of multiple dictionaries..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.1,
            "cveNo": "CVE-2016-3185",
            "description":
                " The make_http_soap_request function in ext/soap/php_http.c in PHP before 5.4.44, 5.5.x before 5.5.28, 5.6.x before 5.6.12, and 7.x before 7.0.4 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (type confusion and application crash) via crafted serialized _cookies data, related to the SoapClient::__call method in ext/soap/soap.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3368",
            "description":
                " The mod_proxy module in the Apache HTTP Server 1.3.x through 1.3.42, 2.0.x through 2.0.64, and 2.2.x through 2.2.21 does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers via a malformed URI containing an initial @ (at sign) character..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": [
              "remote : Multiple : 17969 Apache mod_proxy - Reverse Proxy Exposure"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-5589",
            "description":
                " The phar_convert_to_other function in ext/phar/phar_object.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 does not validate a file pointer before a close operation, which allows remote attackers to cause a denial of service (segmentation fault) or possibly have unspecified other impact via a crafted TAR archive that is mishandled in a Phar::convertToData call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2011-1148",
            "description":
                " Use-after-free vulnerability in the substr_replace function in PHP 5.3.6 and earlier allows context-dependent attackers to cause a denial of service (memory corruption) or possibly have unspecified other impact by using the same variable for multiple arguments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2018-7584",
            "description":
                " In PHP through 5.6.33, 7.0.x before 7.0.28, 7.1.x through 7.1.14, and 7.2.x through 7.2.2, there is a stack-based buffer under-read while parsing an HTTP response in the php_stream_url_wrap_http_ex function in ext/standard/http_fopen_wrapper.c. This subsequently results in copying a large string..",
            "vendors": ["debian", "php", "canonical"],
            "products": ["php"],
            "exploits": [
              "dos : PHP : 44846 PHP 7.2.2 - &#039;php_stream_url_wrap_http_ex&#039; Buffer Overflow"
            ]
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10397",
            "description":
                " In PHP before 5.6.28 and 7.x before 7.0.13, incorrect handling of various URI components in the URL parser could be used by attackers to bypass hostname-specific URL checks, as demonstrated by evil.example.com:80#@good.example.com/ and evil.example.com:80?@good.example.com/ inputs to the parse_url function (implemented in the php_url_parse_ex function in ext/standard/url.c)..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2011-4718",
            "description":
                " Session fixation vulnerability in the Sessions subsystem in PHP before 5.5.2 allows remote attackers to hijack web sessions by specifying a session ID..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-3669",
            "description":
                " Integer overflow in the object_custom function in ext/standard/var_unserializer.c in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via an argument to the unserialize function that triggers calculation of a large length value..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-3668",
            "description":
                " Buffer overflow in the date_from_ISO8601 function in the mkgmtime implementation in libxmlrpc/xmlrpc.c in the XMLRPC extension in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 allows remote attackers to cause a denial of service (application crash) via (1) a crafted first argument to the xmlrpc_set_type function or (2) a crafted argument to the xmlrpc_decode function, related to an out-of-bounds read operation..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-0226",
            "description":
                " Race condition in the mod_status module in the Apache HTTP Server before 2.4.10 allows remote attackers to cause a denial of service (heap-based buffer overflow), or possibly obtain sensitive credential information or execute arbitrary code, via a crafted request that triggers improper scoreboard handling within the status_handler function in modules/generators/mod_status.c and the lua_ap_scoreboard_worker function in modules/lua/lua_request.c..",
            "vendors": ["apache", "oracle", "redhat"],
            "products": [
              "http server",
              "secure global desktop",
              "enterprise manager ops center",
              "jboss enterprise application platform"
            ],
            "exploits": [
              "DoS : Linux : Apache 2.4.7 mod_status - Scoreboard Handling Race Condition"
            ]
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-4598",
            "description":
                " PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read or write to arbitrary files via crafted input to an application that calls (1) a DOMDocument save method or (2) the GD imagepsloadfont function, as demonstrated by a filename\\0.html attack that bypasses an intended configuration in which client users may write to only .html files..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10161",
            "description":
                " The object_common1 function in ext/standard/var_unserializer.c in PHP before 5.6.30, 7.0.x before 7.0.15, and 7.1.x before 7.1.1 allows remote attackers to cause a denial of service (buffer over-read and application crash) via crafted serialized data that is mishandled in a finish_nested_data call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2015-3412",
            "description":
                " PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read arbitrary files via crafted input to an application that calls the stream_resolve_include_path function in ext/standard/streamsfuncs.c, as demonstrated by a filename\\0.extension attack that bypasses an intended configuration in which client users may read files with only one specific extension..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2022-22721",
            "description":
                " If LimitXMLRequestBody is set to allow request bodies larger than 350MB (defaults to 1M) on 32 bit systems an integer overflow happens which later causes out of bounds writes. This issue affects Apache HTTP Server 2.4.52 and earlier..",
            "vendors": ["apache", "oracle"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-4635",
            "description":
                " Integer overflow in the SdnToJewish function in jewish.c in the Calendar component in PHP before 5.3.26 and 5.4.x before 5.4.16 allows context-dependent attackers to cause a denial of service (application hang) via a large argument to the jdtojewish function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0708",
            "description":
                " exif.c in the Exif extension in PHP before 5.3.6 on 64-bit platforms performs an incorrect cast, which allows remote attackers to cause a denial of service (application crash) via an image with a crafted Image File Directory (IFD) that triggers a buffer over-read..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": [
              "dos : Multiple : 16261 PHP &#039;Exif&#039; Extension - &#039;exif_read_data()&#039; Remote Denia"
            ]
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-4317",
            "description":
                " The mod_proxy module in the Apache HTTP Server 1.3.x through 1.3.42, 2.0.x through 2.0.64, and 2.2.x through 2.2.21, when the Revision 1179239 patch is in place, does not properly interact with use of (1) RewriteRule and (2) ProxyPassMatch pattern matches for configuration of a reverse proxy, which allows remote attackers to send requests to intranet servers via a malformed URI containing an @ (at sign) character and a : (colon) character in invalid positions.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2011-3368..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.1,
            "cveNo": "CVE-2018-10547",
            "description":
                " An issue was discovered in ext/phar/phar_object.c in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. There is Reflected XSS on the PHAR 403 and 404 error pages via request data of a request for a .phar file. NOTE: this vulnerability exists because of an incomplete fix for CVE-2018-5712..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5769",
            "description":
                " Multiple integer overflows in mcrypt.c in the mcrypt extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allow remote attackers to cause a denial of service (heap-based buffer overflow and application crash) or possibly have unspecified other impact via a crafted length value, related to the (1) mcrypt_generic and (2) mdecrypt_generic functions..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-3307",
            "description":
                " The phar_parse_metadata function in ext/phar/phar.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to cause a denial of service (heap metadata corruption) or possibly have unspecified other impact via a crafted tar archive..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2014-9912",
            "description":
                " The get_icu_disp_value_src_php function in ext/intl/locale/locale_methods.c in PHP before 5.3.29, 5.4.x before 5.4.30, and 5.5.x before 5.5.14 does not properly restrict calls to the ICU uresbund.cpp component, which allows remote attackers to cause a denial of service (buffer overflow) or possibly have unspecified other impact via a locale_get_display_name call with a long first argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2010-4699",
            "description":
                " The iconv_mime_decode_headers function in the Iconv extension in PHP before 5.3.4 does not properly handle encodings that are unrecognized by the iconv and mbstring (aka Multibyte String) implementations, which allows remote attackers to trigger an incomplete output array, and possibly bypass spam detection or have unspecified other impact, via a crafted Subject header in an e-mail message, as demonstrated by the ks_c_5601-1987 character set..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.1,
            "cveNo": "CVE-2016-5387",
            "description":
                " The Apache HTTP Server through 2.4.23 follows RFC 3875 section 4.1.18 and therefore does not protect applications from the presence of untrusted client data in the HTTP_PROXY environment variable, which might allow remote attackers to redirect an application's outbound HTTP traffic to an arbitrary proxy server via a crafted Proxy header in an HTTP request, aka an \"httpoxy\" issue.  NOTE: the vendor states \"This mitigation has been assigned the identifier CVE-2016-5387\"; in other words, this is not a CVE ID for a vulnerability..",
            "vendors": ["apache", "oracle", "hp", "redhat"],
            "products": [
              "system management homepage",
              "jboss enterprise web server",
              "http server",
              "enterprise manager ops center",
              "jboss core services",
              "jboss web server",
              "communications user data repository"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-29404",
            "description":
                " In Apache HTTP Server 2.4.53 and earlier, a malicious request to a lua script that calls r:parsebody(0) may cause a denial of service due to no default limit on possible input size..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4599",
            "description":
                " The SoapFault::__toString method in ext/soap/soap.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allows remote attackers to obtain sensitive information, cause a denial of service (application crash), or possibly execute arbitrary code via an unexpected data type, related to a \"type confusion\" issue...  <a href=\"http://cwe.mitre.org/data/definitions/843.html\">Access of Resource Using Incompatible Type ('Type Confusion')</a>.",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9,
            "cveNo": "CVE-2021-40438",
            "description":
                " A crafted request uri-path can cause mod_proxy to forward the request to an origin server choosen by the remote user. This issue affects Apache HTTP Server 2.4.48 and earlier..",
            "vendors": ["apache", "oracle", "siemens", "netapp"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "storagegrid",
              "enterprise manager ops center",
              "secure global desktop",
              "sinema server",
              "cloud backup",
              "instantis enterprisetrack",
              "sinec nms",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-5590",
            "description":
                " Stack-based buffer overflow in the phar_fix_filepath function in ext/phar/phar.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large length value, as demonstrated by mishandling of an e-mail attachment by the imap PHP extension..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5093",
            "description":
                " The get_icu_value_internal function in ext/intl/locale/locale_methods.c in PHP before 5.5.36, 5.6.x before 5.6.22, and 7.x before 7.0.7 does not ensure the presence of a '\\0' character, which allows remote attackers to cause a denial of service (out-of-bounds read) or possibly have unspecified other impact via a crafted locale_get_primary_language call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7132",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via an invalid wddxPacket XML document that is mishandled in a wddx_deserialize call, as demonstrated by a stray element inside a boolean element, leading to incorrect pop processing..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-6288",
            "description":
                " The php_url_parse_ex function in ext/standard/url.c in PHP before 5.5.38 allows remote attackers to cause a denial of service (buffer over-read) or possibly have unspecified other impact via vectors involving the smart_str data type..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7130",
            "description":
                " The php_wddx_pop_element function in ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via an invalid base64 binary value, as demonstrated by a wddx_deserialize call that mishandles a binary element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8994",
            "description":
                " An issue was discovered in PHP 5.x and 7.x, when the configuration uses apache2handler/mod_php or php-fpm with OpCache enabled. With 5.x after 5.6.28 or 7.x after 7.0.13, the issue is resolved in a non-default configuration with the opcache.validate_permission=1 setting. The vulnerability details are as follows. In PHP SAPIs where PHP interpreters share a common parent process, Zend OpCache creates a shared memory object owned by the common parent during initialization. Child PHP processes inherit the SHM descriptor, using it to cache and retrieve compiled script bytecode (\"opcode\" in PHP jargon). Cache keys vary depending on configuration, but filename is a central key component, and compiled opcode can generally be run if a script's filename is known or can be guessed. Many common shared-hosting configurations change EUID in child processes to enforce privilege separation among hosted users (for example using mod_ruid2 for the Apache HTTP Server, or php-fpm user settings). In these scenarios, the default Zend OpCache behavior defeats script file permissions by sharing a single SHM cache among all child PHP processes. PHP scripts often contain sensitive information: Think of CMS configurations where reading or running another user's script usually means gaining privileges to the CMS database..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2008-0455",
            "description":
                " Cross-site scripting (XSS) vulnerability in the mod_negotiation module in the Apache HTTP Server 2.2.6 and earlier in the 2.2.x series, 2.0.61 and earlier in the 2.0.x series, and 1.3.39 and earlier in the 1.3.x series allows remote authenticated users to inject arbitrary web script or HTML by uploading a file with a name containing XSS sequences and a file extension, which leads to injection within a (1) \"406 Not Acceptable\" or (2) \"300 Multiple Choices\" HTTP response when the extension is omitted in a request for the file..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-3478",
            "description":
                " Buffer overflow in the mconvert function in softmagic.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, allows remote attackers to cause a denial of service (application crash) via a crafted Pascal string in a FILE_PSTRING conversion..",
            "vendors": ["php", "christos_zoulas"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8873",
            "description":
                " Stack consumption vulnerability in Zend/zend_exceptions.c in PHP before 5.4.44, 5.5.x before 5.5.28, and 5.6.x before 5.6.12 allows remote attackers to cause a denial of service (segmentation fault) via recursive method calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2018-1302",
            "description":
                " When an HTTP/2 stream was destroyed after being handled, the Apache HTTP Server prior to version 2.4.30 could have written a NULL pointer potentially to an already freed memory. The memory pools maintained by the server make this vulnerability hard to trigger in usual configurations, the reporter and the team could not reproduce it outside debug builds, so it is classified as low risk..",
            "vendors": ["apache", "canonical", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-1303",
            "description":
                " A specially crafted HTTP request header could have crashed the Apache HTTP Server prior to version 2.4.30 due to an out of bound read while preparing data to be cached in shared memory. It could be used as a Denial of Service attack against users of mod_cache_socache. The vulnerability is considered as low risk since mod_cache_socache is not widely used, mod_cache_disk is not concerned by this vulnerability..",
            "vendors": ["apache", "debian", "canonical", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store"
            ],
            "exploits": [
              "webapps : PHP : 44960 DAMICMS 6.0.0 - Cross-Site Request Forgery (Add Admin)",
              "webapps : Hardware : 44938 Ecessa ShieldLink SL175EHQ &lt; 10.7.4 - Cross-Site Request Forgery (Add S"
            ]
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2022-22720",
            "description":
                " Apache HTTP Server 2.4.52 and earlier fails to close inbound connection when errors are encountered discarding the request body, exposing the server to HTTP Request Smuggling.",
            "vendors": ["apache", "oracle"],
            "products": [
              "zfs storage appliance kit",
              "http server",
              "enterprise manager ops center"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8877",
            "description":
                " The gdImageScaleTwoPass function in gd_interpolation.c in the GD Graphics Library (aka libgd) before 2.2.0, as used in PHP before 5.6.12, uses inconsistent allocate and free approaches, which allows remote attackers to cause a denial of service (memory consumption) via a crafted call, as demonstrated by a call to the PHP imagescale function..",
            "vendors": ["libgd", "php"],
            "products": ["libgd", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8874",
            "description":
                " Stack consumption vulnerability in GD in PHP before 5.6.12 allows remote attackers to cause a denial of service via a crafted imagefilltoborder call..",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.2,
            "cveNo": "CVE-2016-3142",
            "description":
                " The phar_parse_zipfile function in zip.c in the PHAR extension in PHP before 5.5.33 and 5.6.x before 5.6.19 allows remote attackers to obtain sensitive information from process memory or cause a denial of service (out-of-bounds read and application crash) by placing a PK\\x05\\x06 signature at an invalid location..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5096",
            "description":
                " Integer overflow in the fread function in ext/standard/file.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact via a large integer in the second argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4643",
            "description":
                " Integer overflow in the ftp_genlist function in ext/ftp/ftp.c in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 allows remote FTP servers to execute arbitrary code via a long reply to a LIST command, leading to a heap-based buffer overflow.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2015-4022..",
            "vendors": ["oracle", "debian", "php", "redhat"],
            "products": [
              "enterprise_linux_server_tus",
              "enterprise_linux_server_aus",
              "debian_linux",
              "linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-8879",
            "description":
                " The odbc_bindcols function in ext/odbc/php_odbc.c in PHP before 5.6.12 mishandles driver behavior for SQL_WVARCHAR columns, which allows remote attackers to cause a denial of service (application crash) in opportunistic circumstances by leveraging use of the odbc_fetch_array function to access a certain type of Microsoft SQL Server table..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-9253",
            "description":
                " An issue was discovered in PHP 7.3.x before 7.3.0alpha3, 7.2.x before 7.2.8, and before 7.1.20. The php-fpm master process restarts a child process in an endless loop when using program execution functions (e.g., passthru, exec, shell_exec, or system) with a non-blocking STDIN stream, causing this master process to consume 100% of the CPU, and consume disk space with a large volume of error logs, as demonstrated by an attack by a customer of a shared-hosting facility..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9653",
            "description":
                " readelf.c in file before 5.22, as used in the Fileinfo component in PHP before 5.4.37, 5.5.x before 5.5.21, and 5.6.x before 5.6.5, does not consider that pread calls sometimes read only a subset of the available data, which allows remote attackers to cause a denial of service (uninitialized memory access) or possibly have unspecified other impact via a crafted ELF file..",
            "vendors": ["file_project", "debian", "php"],
            "products": ["file", "debian_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-4021",
            "description":
                " The phar_parse_tarfile function in ext/phar/tar.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 does not verify that the first character of a filename is different from the \\0 character, which allows remote attackers to cause a denial of service (integer underflow and memory corruption) via a crafted entry in a tar archive..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-1823",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.12 and 5.4.x before 5.4.2, when configured as a CGI script (aka php-cgi), does not properly handle query strings that lack an = (equals sign) character, which allows remote attackers to execute arbitrary code by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'd' case..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2015-8838",
            "description":
                " ext/mysqlnd/mysqlnd.c in PHP before 5.4.43, 5.5.x before 5.5.27, and 5.6.x before 5.6.11 uses a client SSL option to mean that SSL is optional, which allows man-in-the-middle attackers to spoof servers via a cleartext-downgrade attack, a related issue to CVE-2015-3152..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4022",
            "description":
                " Integer overflow in the ftp_genlist function in ext/ftp/ftp.c in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 allows remote FTP servers to execute arbitrary code via a long reply to a LIST command, leading to a heap-based buffer overflow..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4025",
            "description":
                " PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 truncates a pathname upon encountering a \\x00 character in certain situations, which allows remote attackers to bypass intended extension restrictions and access files or directories with unexpected names via a crafted argument to (1) set_include_path, (2) tempnam, (3) rmdir, or (4) readlink.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2013-6712",
            "description":
                " The scan function in ext/date/lib/parse_iso_intervals.c in PHP through 5.5.6 does not properly restrict creation of DateInterval objects, which might allow remote attackers to cause a denial of service (heap-based buffer over-read) via a crafted interval specification..",
            "vendors": ["apple", "opensuse", "php"],
            "products": ["mac_os_x", "opensuse", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4026",
            "description":
                " The pcntl_exec implementation in PHP before 5.4.41, 5.5.x before 5.5.25, and 5.6.x before 5.6.9 truncates a pathname upon encountering a \\x00 character, which might allow remote attackers to bypass intended extension restrictions and execute files with unexpected names via a crafted first argument.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9425",
            "description":
                " Double free vulnerability in the zend_ts_hash_graceful_destroy function in zend_ts_hash.c in the Zend Engine in PHP through 5.5.20 and 5.6.x through 5.6.4 allows remote attackers to cause a denial of service or possibly have unspecified other impact via unknown vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-9226",
            "description":
                " An issue was discovered in Oniguruma 6.2.0, as used in Oniguruma-mod in Ruby through 2.4.1 and mbstring in PHP through 7.1.5. A heap out-of-bounds write or read occurs in next_state_val() during regular expression compilation. Octal numbers larger than 0xff are not handled correctly in fetch_token() and fetch_token_in_cc(). A malformed regular expression containing an octal number in the form of '\\700' would produce an invalid code point value larger than 0xff in next_state_val(), resulting in an out-of-bounds write memory corruption..",
            "vendors": ["oniguruma project", "php"],
            "products": ["php", "oniguruma"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9427",
            "description":
                " sapi/cgi/cgi_main.c in the CGI component in PHP through 5.4.36, 5.5.x through 5.5.20, and 5.6.x through 5.6.4, when mmap is used to read a .php file, does not properly consider the mapping's length during processing of an invalid file that begins with a # character and lacks a newline character, which causes an out-of-bounds read and might (1) allow remote attackers to obtain sensitive information from php-cgi process memory by leveraging the ability to upload a .php file or (2) trigger unexpected code execution if a valid PHP script is present in memory locations adjacent to the mapping..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2014-9426",
            "description":
                " ** DISPUTED ** The apprentice_load function in libmagic/apprentice.c in the Fileinfo component in PHP through 5.6.4 attempts to perform a free operation on a stack-based character array, which allows remote attackers to cause a denial of service (memory corruption or application crash) or possibly have unspecified other impact via unknown vectors.  NOTE: this is disputed by the vendor because the standard erealloc behavior makes the free operation unreachable..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10158",
            "description":
                " The exif_convert_any_to_int function in ext/exif/exif.c in PHP before 5.6.30, 7.0.x before 7.0.15, and 7.1.x before 7.1.1 allows remote attackers to cause a denial of service (application crash) via crafted EXIF data that triggers an attempt to divide the minimum representable negative integer by -1..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-10159",
            "description":
                " Integer overflow in the phar_parse_pharfile function in ext/phar/phar.c in PHP before 5.6.30 and 7.0.x before 7.0.15 allows remote attackers to cause a denial of service (memory consumption or application crash) via a truncated manifest entry in a PHAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2014-3670",
            "description":
                " The exif_ifd_make_value function in exif.c in the EXIF extension in PHP before 5.4.34, 5.5.x before 5.5.18, and 5.6.x before 5.6.2 operates on floating-point arrays incorrectly, which allows remote attackers to cause a denial of service (heap memory corruption and application crash) or possibly execute arbitrary code via a crafted JPEG image with TIFF thumbnail data that is improperly handled by the exif_thumbnail function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2014-0098",
            "description":
                " The log_cookie function in mod_log_config.c in the mod_log_config module in the Apache HTTP Server before 2.4.8 allows remote attackers to cause a denial of service (segmentation fault and daemon crash) via a crafted cookie that is not properly handled during truncation..",
            "vendors": ["apache", "oracle"],
            "products": ["http server", "secure global desktop"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-0228",
            "description":
                " The lua_websocket_read function in lua_request.c in the mod_lua module in the Apache HTTP Server through 2.4.12 allows remote attackers to cause a denial of service (child-process crash) by sending a crafted WebSocket Ping frame after a Lua script has called the wsupgrade function..",
            "vendors": ["apple", "apache", "opensuse", "canonical"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2019-9641",
            "description":
                " An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_TIFF..",
            "vendors": ["debian", "opensuse", "php", "canonical", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-9224",
            "description":
                " An issue was discovered in Oniguruma 6.2.0, as used in Oniguruma-mod in Ruby through 2.4.1 and mbstring in PHP through 7.1.5. A stack out-of-bounds read occurs in match_at() during regular expression searching. A logical error involving order of validation and access in match_at() could result in an out-of-bounds read from a stack buffer..",
            "vendors": ["oniguruma project", "php"],
            "products": ["php", "oniguruma"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-8743",
            "description":
                " Apache HTTP Server, in all releases prior to 2.2.32 and 2.4.25, was liberal in the whitespace accepted from requests and sent in response lines and headers. Accepting these different behaviors represented a security concern when httpd participates in any chain of proxies or interacts with back-end application servers, either through mod_proxy or using conventional CGI mechanisms, and may result in request smuggling, response splitting and cache pollution..",
            "vendors": ["apache", "redhat", "netapp"],
            "products": [
              "http server",
              "oncommand unified manager",
              "jboss core services",
              "clustered data ontap"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-3365",
            "description":
                " The SQLite functionality in PHP before 5.3.15 allows remote attackers to bypass the open_basedir protection mechanism via unspecified vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-15132",
            "description":
                " An issue was discovered in ext/standard/link_win32.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. The linkinfo function on Windows doesn't implement the open_basedir check. This could be abused to find files on paths outside of the allowed directories..",
            "vendors": ["php", "netapp"],
            "products": ["storage automation store", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7124",
            "description":
                " ext/standard/var_unserializer.c in PHP before 5.6.25 and 7.x before 7.0.10 mishandles certain invalid objects, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via crafted serialized data that leads to a (1) __destruct call or (2) magic method call..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7125",
            "description":
                " ext/session/session.c in PHP before 5.6.25 and 7.x before 7.0.10 skips invalid session names in a way that triggers incorrect parsing, which allows remote attackers to inject arbitrary-type session data by leveraging control of a session name, as demonstrated by object injection..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7126",
            "description":
                " The imagetruecolortopalette function in ext/gd/gd.c in PHP before 5.6.25 and 7.x before 7.0.10 does not properly validate the number of colors, which allows remote attackers to cause a denial of service (select_colors allocation error and out-of-bounds write) or possibly have unspecified other impact via a large value in the third argument..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7127",
            "description":
                " The imagegammacorrect function in ext/gd/gd.c in PHP before 5.6.25 and 7.x before 7.0.10 does not properly validate gamma values, which allows remote attackers to cause a denial of service (out-of-bounds write) or possibly have unspecified other impact by providing different signs for the second and third arguments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.3,
            "cveNo": "CVE-2015-6836",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/843.html\">CWE-843: Access of Resource Using Incompatible Type ('Type Confusion')</a>..  The SoapClient __call method in ext/soap/soap.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 does not properly manage headers, which allows remote attackers to execute arbitrary code via crafted serialized data that triggers a \"type confusion\" in the serialize_function_call function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2015-4642",
            "description":
                " The escapeshellarg function in ext/standard/exec.c in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 on Windows allows remote attackers to execute arbitrary OS commands via a crafted string to an application that accepts command-line arguments for a call to the PHP system function..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-0753",
            "description":
                " Race condition in the PCNTL extension in PHP before 5.3.4, when a user-defined signal handler exists, might allow context-dependent attackers to cause a denial of service (memory corruption) via a large number of concurrent signals..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2016-7128",
            "description":
                " The exif_process_IFD_in_TIFF function in ext/exif/exif.c in PHP before 5.6.25 and 7.x before 7.0.10 mishandles the case of a thumbnail offset that exceeds the file size, which allows remote attackers to obtain sensitive information from process memory via a crafted TIFF image..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-7129",
            "description":
                " The php_wddx_process_data function in ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (segmentation fault) or possibly have unspecified other impact via an invalid ISO 8601 time value, as demonstrated by a wddx_deserialize call that mishandles a dateTime element in a wddxPacket XML document..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-0755",
            "description":
                " Integer overflow in the mt_rand function in PHP before 5.3.4 might make it easier for context-dependent attackers to predict the return values by leveraging a script's use of a large max parameter, as demonstrated by a value that exceeds mt_getrandmax..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.4,
            "cveNo": "CVE-2011-0754",
            "description":
                " The SplFileInfo::getType function in the Standard PHP Library (SPL) extension in PHP before 5.3.4 on Windows does not properly detect symbolic links, which might make it easier for local users to conduct symlink attacks by leveraging cross-platform differences in the stat structure, related to lack of a FILE_ATTRIBUTE_REPARSE_POINT check..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-3267",
            "description":
                " PHP before 5.3.7 does not properly implement the error_log function, which allows context-dependent attackers to cause a denial of service (application crash) via unspecified vectors..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-2554",
            "description":
                " Stack-based buffer overflow in ext/phar/tar.c in PHP before 5.5.32, 5.6.x before 5.6.18, and 7.x before 7.0.3 allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact via a crafted TAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2017-11628",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7, a stack-based buffer overflow in the zend_ini_do_op() function in Zend/zend_ini_parser.c could cause a denial of service or potentially allow executing code. NOTE: this is only relevant for PHP applications that accept untrusted input (instead of the system's php.ini file) for the parse_ini_string or parse_ini_file function, e.g., a web application for syntax validation of php.ini directives..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3480",
            "description":
                " The cdf_count_chain function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, does not properly validate sector-count data, which allows remote attackers to cause a denial of service (application crash) via a crafted CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2017-12933",
            "description":
                " The finish_nested_data function in ext/standard/var_unserializer.re in PHP before 5.6.31, 7.0.x before 7.0.21, and 7.1.x before 7.1.7 is prone to a buffer over-read while unserializing untrusted data. Exploitation of this issue can have an unspecified impact on the integrity of PHP..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 2.6,
            "cveNo": "CVE-2014-4721",
            "description":
                " The phpinfo implementation in ext/standard/info.c in PHP before 5.4.30 and 5.5.x before 5.5.14 does not ensure use of the string data type for the PHP_AUTH_PW, PHP_AUTH_TYPE, PHP_AUTH_USER, and PHP_SELF variables, which might allow context-dependent attackers to obtain sensitive information from process memory by using the integer data type with crafted values, related to a \"type confusion\" vulnerability, as demonstrated by reading a private SSL key in an Apache HTTP Server web-hosting environment with mod_ssl and a PHP 5.3.x mod_php..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2011-3268",
            "description":
                " Buffer overflow in the crypt function in PHP before 5.3.7 allows context-dependent attackers to have an unspecified impact via a long salt argument, a different vulnerability than CVE-2011-2483..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-5772",
            "description":
                " Double free vulnerability in the php_wddx_process_data function in wddx.c in the WDDX extension in PHP before 5.5.37, 5.6.x before 5.6.23, and 7.x before 7.0.8 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via crafted XML data that is mishandled in a wddx_deserialize call..",
            "vendors": ["suse", "php"],
            "products": ["php", "linux enterprise debuginfo"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-9767",
            "description":
                " Directory traversal vulnerability in the ZipArchive::extractTo function in ext/zip/php_zip.c in PHP before 5.4.45, 5.5.x before 5.5.29, and 5.6.x before 5.6.13 and ext/zip/ext_zip.cpp in HHVM before 3.12.1 allows remote attackers to create arbitrary empty directories via a crafted ZIP archive..",
            "vendors": ["php", "hiphop_virtual_machine_for_php_project"],
            "products": ["hiphop_virtual_machine_for_php", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-2331",
            "description":
                " Integer overflow in the _zip_cdir_new function in zip_dirent.c in libzip 0.11.2 and earlier, as used in the ZIP extension in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 and other products, allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a ZIP archive that contains many entries, leading to a heap-based buffer overflow..",
            "vendors": ["fedoraproject", "debian", "opensuse", "php", "nih"],
            "products": ["fedora", "debian_linux", "opensuse", "php", "libzip"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2013-1896",
            "description":
                " mod_dav.c in the Apache HTTP Server before 2.2.25 does not properly determine whether DAV is enabled for a URI, which allows remote attackers to cause a denial of service (segmentation fault) via a MERGE request in which the URI is configured for handling by the mod_dav_svn module, but a certain href attribute in XML data refers to a non-DAV URI..",
            "vendors": ["apache", "redhat"],
            "products": [
              "http server",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4537",
            "description":
                " The bcpowmod function in ext/bcmath/bcmath.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 accepts a negative integer for the scale argument, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via a crafted call..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-2336",
            "description":
                " sapi/cgi/cgi_main.c in PHP before 5.3.13 and 5.4.x before 5.4.3, when configured as a CGI script (aka php-cgi), does not properly handle query strings that lack an = (equals sign) character, which allows remote attackers to cause a denial of service (resource consumption) by placing command-line options in the query string, related to lack of skipping a certain php_getopt for the 'T' case.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2012-1823..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4538",
            "description":
                " The bcpowmod function in ext/bcmath/bcmath.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 modifies certain data structures without considering whether they are copies of the _zero_, _one_, or _two_ global variable, which allows remote attackers to cause a denial of service or possibly have unspecified other impact via a crafted call..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.8,
            "cveNo": "CVE-2016-4539",
            "description":
                " The xml_parse_into_struct function in ext/xml/xml.c in PHP before 5.5.35, 5.6.x before 5.6.21, and 7.x before 7.0.6 allows remote attackers to cause a denial of service (buffer under-read and segmentation fault) or possibly have unspecified other impact via crafted XML data in the second argument, leading to a parser level of zero..",
            "vendors": ["fedoraproject", "opensuse", "php"],
            "products": ["fedora", "php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2011-2483",
            "description":
                " crypt_blowfish before 1.1, as used in PHP before 5.3.7 on certain platforms, PostgreSQL before 8.4.9, and other products, does not properly handle 8-bit characters, which makes it easier for context-dependent attackers to determine a cleartext password by leveraging knowledge of a password hash..",
            "vendors": ["php", "solar_designer"],
            "products": ["crypt_blowfish", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.6,
            "cveNo": "CVE-2016-5095",
            "description":
                " Integer overflow in the php_escape_html_entities_ex function in ext/standard/html.c in PHP before 5.5.36 and 5.6.x before 5.6.22 allows remote attackers to cause a denial of service or possibly have unspecified other impact by triggering a large output string from a FILTER_SANITIZE_FULL_SPECIAL_CHARS filter_var call.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2016-5094..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.6,
            "cveNo": "CVE-2014-4698",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/416.html\" target=\"_blank\">CWE-416: Use After Free</a>..  Use-after-free vulnerability in ext/spl/spl_array.c in the SPL component in PHP through 5.5.14 allows context-dependent attackers to cause a denial of service or possibly have unspecified other impact via crafted ArrayIterator usage within applications in certain web-hosting environments..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-3329",
            "description":
                " Multiple stack-based buffer overflows in the phar_set_inode function in phar_internal.h in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 allow remote attackers to execute arbitrary code via a crafted length value in a (1) tar, (2) phar, or (3) ZIP archive..",
            "vendors": ["apple", "oracle", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "linux",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2018-19395",
            "description":
                " ext/standard/var.c in PHP 5.x through 7.1.24 on Windows allows attackers to cause a denial of service (NULL pointer dereference and application crash) because com and com_safearray_proxy return NULL in com_properties_get in ext/com_dotnet/com_handlers.c, as demonstrated by a serialize call on COM(\"WScript.Shell\")..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-0789",
            "description":
                " Memory leak in the timezone functionality in PHP before 5.3.9 allows remote attackers to cause a denial of service (memory consumption) by triggering many strtotime function calls, which are not properly handled by the php_date_parse_tzfile cache..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7131",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.25 and 7.x before 7.0.10 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) or possibly have unspecified other impact via a malformed wddxPacket XML document that is mishandled in a wddx_deserialize call, as demonstrated by a tag that lacks a < (less than) character..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2012-0788",
            "description":
                " The PDORow implementation in PHP before 5.3.9 does not properly interact with the session feature, which allows remote attackers to cause a denial of service (application crash) via a crafted application that uses a PDO driver for a fetch and then calls the session_start function, as demonstrated by a crash of the Apache HTTP Server..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.5,
            "cveNo": "CVE-2015-3411",
            "description":
                " PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8 does not ensure that pathnames lack %00 sequences, which might allow remote attackers to read or write to arbitrary files via crafted input to an application that calls (1) a DOMDocument load method, (2) the xmlwriter_open_uri function, (3) the finfo_file function, or (4) the hash_hmac_file function, as demonstrated by a filename\\0.xml attack that bypasses an intended configuration in which client users may read only .xml files..",
            "vendors": ["php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.8,
            "cveNo": "CVE-2016-6289",
            "description":
                " Integer overflow in the virtual_file_ex function in TSRM/tsrm_virtual_cwd.c in PHP before 5.5.38, 5.6.x before 5.6.24, and 7.x before 7.0.9 allows remote attackers to cause a denial of service (stack-based buffer overflow) or possibly have unspecified other impact via a crafted extract operation on a ZIP archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2012-3499",
            "description":
                " Multiple cross-site scripting (XSS) vulnerabilities in the Apache HTTP Server 2.2.x before 2.2.24-dev and 2.4.x before 2.4.4 allow remote attackers to inject arbitrary web script or HTML via vectors involving hostnames and URIs in the (1) mod_imagemap, (2) mod_info, (3) mod_ldap, (4) mod_proxy_ftp, and (5) mod_status modules..",
            "vendors": ["apache"],
            "products": ["http server"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2010-4657",
            "description":
                " PHP5 before 5.4.4 allows passing invalid utf-8 strings via the xmlTextWriterWriteAttribute, which are then misparsed by libxml2. This results in memory leak into the resulting output..",
            "vendors": ["debian", "php", "redhat"],
            "products": ["enterprise_linux", "debian_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-9934",
            "description":
                " ext/wddx/wddx.c in PHP before 5.6.28 and 7.x before 7.0.13 allows remote attackers to cause a denial of service (NULL pointer dereference) via crafted serialized data in a wddxPacket XML document, as demonstrated by a PDORow string..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2018-19520",
            "description":
                " An issue was discovered in SDCMS 1.6 with PHP 5.x. app/admin/controller/themecontroller.php uses a check_bad function in an attempt to block certain PHP functions such as eval, but does not prevent use of preg_replace 'e' calls, allowing users to execute arbitrary code by leveraging access to admin template management..",
            "vendors": ["php", "sdcms"],
            "products": ["php", "sdcms"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2016-7478",
            "description":
                " Zend/zend_exceptions.c in PHP, possibly 5.x before 5.6.28 and 7.x before 7.0.13, allows remote attackers to cause a denial of service (infinite loop) via a crafted Exception object in serialized data, a related issue to CVE-2015-8876...  <a href=\"http://cwe.mitre.org/data/definitions/835.html\">CWE-835: Loop with Unreachable Exit Condition ('Infinite Loop')</a>.",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2015-4644",
            "description":
                " <a href=\"http://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>..  The php_pgsql_meta_data function in pgsql.c in the PostgreSQL (aka pgsql) extension in PHP before 5.4.42, 5.5.x before 5.5.26, and 5.6.x before 5.6.10 does not validate token extraction for table names, which might allow remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a crafted name.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2015-1352..",
            "vendors": ["php", "redhat"],
            "products": ["enterprise_linux", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-11142",
            "description":
                " In PHP before 5.6.31, 7.x before 7.0.17, and 7.1.x before 7.1.3, remote attackers could cause a CPU consumption denial of service attack by injecting long form variables, related to main/php_variables.c..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2012-2386",
            "description":
                " Integer overflow in the phar_parse_tarfile function in tar.c in the phar extension in PHP before 5.3.14 and 5.4.x before 5.4.4 allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via a crafted tar file that triggers a heap-based buffer overflow..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-4343",
            "description":
                " The phar_make_dirstream function in ext/phar/dirstream.c in PHP before 5.6.18 and 7.x before 7.0.3 mishandles zero-size ././@LongLink files, which allows remote attackers to cause a denial of service (uninitialized pointer dereference) or possibly have unspecified other impact via a crafted TAR archive..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 8.8,
            "cveNo": "CVE-2016-4342",
            "description":
                " ext/phar/phar_object.c in PHP before 5.5.32, 5.6.x before 5.6.18, and 7.x before 7.0.3 mishandles zero-length uncompressed data, which allows remote attackers to cause a denial of service (heap memory corruption) or possibly have unspecified other impact via a crafted (1) TAR, (2) ZIP, or (3) PHAR archive..",
            "vendors": ["opensuse", "php"],
            "products": ["php", "leap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 10,
            "cveNo": "CVE-2012-2376",
            "description":
                " Buffer overflow in the com_print_typeinfo function in PHP 5.4.3 and earlier on Windows allows remote attackers to execute arbitrary code via crafted arguments that trigger incorrect handling of COM object VARIANT types, as exploited in the wild in May 2012..",
            "vendors": ["php", "microsoft"],
            "products": ["php", "windows"],
            "exploits": [
              "local : Windows_x86 : 18861 PHP 5.4.3 (Windows x86 Polish) - Code Execution"
            ]
          },
          {
            "cyfirmaScore": 3.3,
            "cveNo": "CVE-2014-3981",
            "description":
                " acinclude.m4, as used in the configure script in PHP 5.5.13 and earlier, allows local users to overwrite arbitrary files via a symlink attack on the /tmp/phpglibccheck file..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2016-8612",
            "description":
                " Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process..",
            "vendors": ["apache", "redhat", "netapp"],
            "products": [
              "enterprise_linux",
              "storage_automation_store",
              "http_server"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-7803",
            "description":
                " The phar_get_entry_data function in ext/phar/util.c in PHP before 5.5.30 and 5.6.x before 5.6.14 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via a .phar file with a crafted TAR archive entry in which the Link indicator references a file that does not exist...  <a href=\"https://cwe.mitre.org/data/definitions/476.html\">CWE-476: NULL Pointer Dereference</a>\n\n<a href=\"http://lists.apple.com/archives/security-announce/2015/Dec/msg00005.html\">Per Advisory: The attack can lead to remote code execution.",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-7804",
            "description":
                " <a href=\"http://lists.apple.com/archives/security-announce/2015/Dec/msg00005.html\">Per Advisory: The attack can lead to remote code execution..  Off-by-one error in the phar_parse_zipfile function in ext/phar/zip.c in PHP before 5.5.30 and 5.6.x before 5.6.14 allows remote attackers to cause a denial of service (uninitialized pointer dereference and application crash) by including the / filename in a .zip PHAR archive..",
            "vendors": ["apple", "php"],
            "products": ["mac_os_x", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.9,
            "cveNo": "CVE-2018-1301",
            "description":
                " A specially crafted request could have crashed the Apache HTTP Server prior to version 2.4.30, due to an out of bound access after a size limit is reached by reading the HTTP header. This vulnerability is considered very hard if not impossible to trigger in non-debug mode (both log and build level), so it is classified as low risk for common server usage..",
            "vendors": ["apache", "debian", "canonical", "redhat", "netapp"],
            "products": [
              "http server",
              "storagegrid",
              "santricity cloud connector",
              "storage automation store"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2017-9788",
            "description":
                " In Apache httpd before 2.2.34 and 2.4.x before 2.4.27, the value placeholder in [Proxy-]Authorization headers of type 'Digest' was not initialized or reset before or between successive key=value assignments by mod_auth_digest. Providing an initial key with no '=' assignment could reflect the stale value of uninitialized pool memory used by the prior request, leading to leakage of potentially confidential information, and a segfault in other cases resulting in denial of service..",
            "vendors": [
              "apple",
              "apache",
              "oracle",
              "debian",
              "redhat",
              "netapp"
            ],
            "products": [
              "jboss enterprise web server",
              "http server",
              "oncommand unified manager",
              "secure global desktop",
              "jboss core services",
              "storage automation store",
              "jboss enterprise application platform"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 3.6,
            "cveNo": "CVE-2014-5459",
            "description":
                " The PEAR_REST class in REST.php in PEAR in PHP through 5.6.0 allows local users to write to arbitrary files via a symlink attack on a (1) rest.cachefile or (2) rest.cacheid file in /tmp/pear/cache/, related to the retrieveCacheFirst and useLocalCache functions..",
            "vendors": ["oracle", "opensuse", "php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5,
            "cveNo": "CVE-2015-2348",
            "description":
                " The move_uploaded_file implementation in ext/standard/basic_functions.c in PHP before 5.4.39, 5.5.x before 5.5.23, and 5.6.x before 5.6.7 truncates a pathname upon encountering a \\x00 character, which allows remote attackers to bypass intended extension restrictions and create files with unexpected names via a crafted second argument.  NOTE: this vulnerability exists because of an incomplete fix for CVE-2006-7243..",
            "vendors": ["apple", "opensuse", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "opensuse",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2022-30556",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may return lengths to applications calling r:wsread() that point past the end of the storage allocated for the buffer..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 6.8,
            "cveNo": "CVE-2015-3330",
            "description":
                " The php_handler function in sapi/apache2handler/sapi_apache2.c in PHP before 5.4.40, 5.5.x before 5.5.24, and 5.6.x before 5.6.8, when the Apache HTTP Server 2.4.x is used, allows remote attackers to cause a denial of service (application crash) or possibly execute arbitrary code via pipelined HTTP requests that result in a \"deconfigured interpreter.\".",
            "vendors": ["apple", "oracle", "php", "redhat"],
            "products": [
              "enterprise_linux_hpc_node",
              "enterprise_linux_hpc_node_eus",
              "mac_os_x",
              "linux",
              "enterprise_linux",
              "php",
              "enterprise_linux_desktop",
              "enterprise_linux_server",
              "enterprise_linux_workstation",
              "solaris",
              "enterprise_linux_server_eus"
            ],
            "exploits": []
          },
          {
            "cyfirmaScore": 7.5,
            "cveNo": "CVE-2017-16642",
            "description":
                " In PHP before 5.6.32, 7.x before 7.0.25, and 7.1.x before 7.1.11, an error in the date extension's timelib_meridian handling of 'front of' and 'back of' directives could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: this is a different issue than CVE-2017-11145..",
            "vendors": ["debian", "php", "canonical", "netapp"],
            "products": [
              "clustered_data_ontap",
              "debian_linux",
              "php",
              "storage_automation_store",
              "ubuntu_linux"
            ],
            "exploits": [
              "dos : Multiple : 43133 PHP 7.1.8 - Heap Buffer Overflow"
            ]
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1471",
            "description":
                " Integer signedness error in zip_stream.c in the Zip extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (CPU consumption) via a malformed archive file that triggers errors in zip_fread function calls..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2011-1470",
            "description":
                " The Zip extension in PHP before 5.3.6 allows context-dependent attackers to cause a denial of service (application crash) via a ziparchive stream that is not properly handled by the stream_get_contents function..",
            "vendors": ["php"],
            "products": ["php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 4.3,
            "cveNo": "CVE-2014-3479",
            "description":
                " The cdf_check_stream_offset function in cdf.c in file before 5.19, as used in the Fileinfo component in PHP before 5.4.30 and 5.5.x before 5.5.14, relies on incorrect sector-size data, which allows remote attackers to cause a denial of service (application crash) via a crafted stream offset in a CDF file..",
            "vendors": ["file project", "php"],
            "products": ["file", "php"],
            "exploits": []
          },
          {
            "cyfirmaScore": 9.1,
            "cveNo": "CVE-2022-28615",
            "description":
                " Apache HTTP Server 2.4.53 and earlier may crash or disclose information due to a read beyond bounds in ap_strcmp_match() when provided with an extremely large input buffer. While no code distributed with the server can be coerced into such a call, third-party modules or lua scripts that use ap_strcmp_match() may hypothetically be affected..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          },
          {
            "cyfirmaScore": 5.3,
            "cveNo": "CVE-2022-28614",
            "description":
                " The ap_rwrite() function in Apache HTTP Server 2.4.53 and earlier may read unintended memory if an attacker can cause the server to reflect very large input using ap_rwrite() or ap_rputs(), such as with mod_luas r:puts() function. Modules compiled and distributed separately from Apache HTTP Server that use the 'ap_rputs' function and may pass it a very large (INT_MAX or larger) string must be compiled against current headers to resolve the issue..",
            "vendors": ["apache", "netapp"],
            "products": ["http server", "clustered data ontap"],
            "exploits": []
          }
        ],
        "dataBreachIPVulnerabilityId": "635efabf3d72934a4d174ee6",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description":
            "You have software php 5.2.17, http_server 2.2.15, jquery cloudflare running in this system that have known vulnerabilities which are exploited by Threat Actor(s) <span class=\"active-txt TA\">Fancy Bear</span>, <span class=\"active-txt TA\">GCMAN</span>, <span class=\"active-txt TA\">Lazarus Group</span>, <span class=\"active-txt TA\">MISSION2025</span>, <span class=\"active-txt TA\">RTM</span>, <span class=\"active-txt TA\">Stone Panda</span>, <span class=\"active-txt TA\">TATestFORAsset</span>, <span class=\"active-txt TA\">Test_New_ThreatActor</span>",
        "location": null,
        "domainStatus": "200",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": true,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": true,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 9,
        "riskRating": 9,
        "openPortRiskRating": 1,
        "configRiskRating": 9,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "openPortLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "configLastModifiedDate": "2022-10-30T22:30:54.766Z",
        "threatActors": [
          "Fancy Bear",
          "GCMAN",
          "Lazarus Group",
          "MISSION2025",
          "RTM",
          "Stone Panda",
          "TATestFORAsset",
          "Test_New_ThreatActor"
        ],
        "subDomainUID": "625fcd733d7293cd2cc4966d",
        "subDomainCreatedDate": "2022-04-20T09:08:03.389Z",
        "isNew": false
      }
    },
    {
      "id": "635f012f3d72934a4d1763a2",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635ef9493d72934a4d174bae",
      "date": null,
      "createdDate": "2022-10-30T22:56:47.389",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: autodiscover.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:23:05.033Z",
        "lastModifiedDate": "2022-10-30T22:23:05.033Z",
        "id": "635ef9493d72934a4d174bae",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "40.99.9.184",
        "ips": ["52.98.123.232", "52.98.88.248", "40.99.9.40", "40.99.9.184"],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[859ad866-61bd-f2a9-3312-5b5314c607cf], X-FEServer=[PN3PR01CA0052, PN3PR01CA0052], X-RequestId=[14c68a84-41a6-4b20-975c-99fc3b93ec00], X-FEProxyInfo=[PN3PR01CA0052.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[Ztiahb1hqfIzEltTFMYHzw.0], X-Powered-By=[ASP.NET], Date=[Sun, 30 Oct 2022 21:14:34 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "6288dd0b3d7293f0df52489d",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:23:05.033Z",
        "openPortLastModifiedDate": "2022-10-30T22:23:05.033Z",
        "configLastModifiedDate": "2022-10-30T22:23:05.033Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635f012f3d72934a4d1763a0",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635ef9243d72934a4d174b6e",
      "date": null,
      "createdDate": "2022-10-30T22:56:47.011",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: fmtrack.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-30T22:22:28.630Z",
        "lastModifiedDate": "2022-10-30T22:22:28.630Z",
        "id": "635ef9243d72934a4d174b6e",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "3.221.14.223",
        "ips": ["52.7.29.251", "3.221.14.223"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635ef9233d72934a4d174b69",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-30T22:22:28.630Z",
        "openPortLastModifiedDate": "2022-10-30T22:22:28.630Z",
        "configLastModifiedDate": "2022-10-30T22:22:28.630Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635afaa53d7293714b1e6e32",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cf3d7293714b1e66e2",
      "date": null,
      "createdDate": "2022-10-27T21:39:49.981",
      "orgId": 1,
      "title": "You have non-standard ports 80 opened",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:07.303Z",
        "lastModifiedDate": "2022-10-27T21:02:07.303Z",
        "id": "635af1cf3d7293714b1e66e2",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "52.98.123.184",
        "ips": [
          "52.98.123.248",
          "40.99.31.136",
          "52.98.123.184",
          "52.98.59.24"
        ],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[b6eccd7c-6755-23d4-4b9e-66a7d7f4fd60], X-FEServer=[PN3PR01CA0099, PN3PR01CA0099], X-RequestId=[6d4089be-e374-47dc-8431-a93c102c45aa], X-FEProxyInfo=[PN3PR01CA0099.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[fM3stlVn1CNLnman1/T9YA.0], X-Powered-By=[ASP.NET], Date=[Thu, 27 Oct 2022 20:45:15 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "62a042233d7293bf792c8e42",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "configLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635afaa53d7293714b1e6e31",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cb3d7293714b1e66e1",
      "date": null,
      "createdDate": "2022-10-27T21:39:49.906",
      "orgId": 1,
      "title": "You have non-standard ports 80, 8080, 443, 8081 opened",
      "description": null,
      "riskScore": 1,
      "source": "fwtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:03.241Z",
        "lastModifiedDate": "2022-10-27T21:02:03.241Z",
        "id": "635af1cb3d7293714b1e66e1",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fwtrack.cyfirma.com",
        "ip": "13.126.106.193",
        "ips": ["13.126.106.193", "13.234.93.220"],
        "source": "fwtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1cb3d7293714b1e66e0",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 8080, 443, 8081],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "configLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "threatActors": [],
        "subDomainUID": "62986cfe3d729352d755fd43",
        "subDomainCreatedDate": "2022-06-02T07:55:42.670Z",
        "isNew": false
      }
    },
    {
      "id": "635afaa53d7293714b1e6e30",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1ca3d7293714b1e66df",
      "date": null,
      "createdDate": "2022-10-27T21:39:49.824",
      "orgId": 1,
      "title": "You have non-standard ports 80, 443 opened",
      "description": null,
      "riskScore": 1,
      "source": "fmtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "OPEN PORTS",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fmtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:02.922Z",
        "lastModifiedDate": "2022-10-27T21:02:02.922Z",
        "id": "635af1ca3d7293714b1e66df",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fmtrack.cyfirma.com",
        "ip": "52.70.226.45",
        "ips": ["52.70.226.45", "52.20.184.207"],
        "source": "fmtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1ca3d7293714b1e66de",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 443],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "configLastModifiedDate": "2022-10-27T21:02:02.921Z",
        "threatActors": [],
        "subDomainUID": "633be9f33d7293351271ad53",
        "subDomainCreatedDate": "2022-10-04T08:08:19.295Z",
        "isNew": false
      }
    },
    {
      "id": "635afa9a3d7293714b1e6e2a",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cf3d7293714b1e66e2",
      "date": null,
      "createdDate": "2022-10-27T21:39:38.288",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: autodiscover.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "autodiscover.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "autodiscover.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:07.303Z",
        "lastModifiedDate": "2022-10-27T21:02:07.303Z",
        "id": "635af1cf3d7293714b1e66e2",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "autodiscover.cyfirma.com",
        "ip": "52.98.123.184",
        "ips": [
          "52.98.123.248",
          "40.99.31.136",
          "52.98.123.184",
          "52.98.59.24"
        ],
        "source": "autodiscover.cyfirma.com",
        "sourceDataElement":
            "{Cache-Control=[no-cache], Pragma=[no-cache], Location=[https://outlook.office365.com/owa/?realm=cyfirma.com&vd=autodiscover], Server=[Microsoft-IIS/10.0], request-id=[b6eccd7c-6755-23d4-4b9e-66a7d7f4fd60], X-FEServer=[PN3PR01CA0099, PN3PR01CA0099], X-RequestId=[6d4089be-e374-47dc-8431-a93c102c45aa], X-FEProxyInfo=[PN3PR01CA0099.INDPRD01.PROD.OUTLOOK.COM], X-FEEFZInfo=[PNQ], MS-CV=[fM3stlVn1CNLnman1/T9YA.0], X-Powered-By=[ASP.NET], Date=[Thu, 27 Oct 2022 20:45:15 GMT], Connection=[close], Content-Length=[0]}",
        "software": "windows , internet_information_services 10.0",
        "softwareVersion": null,
        "server": "Microsoft-IIS",
        "serverVersion": "10.0",
        "technologies": {
          "windows": "",
          "internet.information.services": "10.0"
        },
        "technologyList": [
          "internet information services",
          "microsoft iis",
          "windows",
          "microsoft-iis",
          "internet_information_services"
        ],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": true,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "62a042233d7293bf792c8e42",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "301",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": false,
        "secureCookie": false,
        "strictTransportSecurity": false,
        "xframeOptions": false,
        "cookiexssProtection": false,
        "contentSecurityPolicy": false,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 10,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "configLastModifiedDate": "2022-10-27T21:02:07.303Z",
        "threatActors": [],
        "subDomainUID": "625fcd783d7293cd2cc49674",
        "subDomainCreatedDate": "2022-04-20T09:08:08.347Z",
        "isNew": false
      }
    },
    {
      "id": "635afa9a3d7293714b1e6e29",
      "moduleName": "TVI",
      "type": "Attack Surface",
      "parentId": "635af1cb3d7293714b1e66e1",
      "date": null,
      "createdDate": "2022-10-27T21:39:38.226",
      "orgId": 1,
      "title":
          "New Vulnerabilities has been found for the domain: fwtrack.cyfirma.com",
      "description": null,
      "riskScore": 1,
      "source": "fwtrack.cyfirma.com",
      "category": "Attack Surface",
      "subCategory": "DOMAIN / IP VULNERABILITY",
      "geographies": [],
      "technologies": [],
      "industries": [],
      "drdDomainId": null,
      "drdDomainName": null,
      "subDomain": "fwtrack.cyfirma.com",
      "assetName": "",
      "fullData": {
        "createdDate": "2022-10-27T21:02:03.241Z",
        "lastModifiedDate": "2022-10-27T21:02:03.241Z",
        "id": "635af1cb3d7293714b1e66e1",
        "orgId": 1,
        "domain": "cyfirma.com",
        "domainId": 179415,
        "subDomain": "fwtrack.cyfirma.com",
        "ip": "13.126.106.193",
        "ips": ["13.126.106.193", "13.234.93.220"],
        "source": "fwtrack.cyfirma.com",
        "sourceDataElement": null,
        "software": "",
        "softwareVersion": null,
        "server": null,
        "serverVersion": null,
        "technologies": {},
        "technologyList": [],
        "technologyStack": null,
        "cookies": null,
        "dnssec": null,
        "mailSecurity": {
          "spf": null,
          "dmrc": null,
          "dkim": null,
          "openRelay": null
        },
        "domainSecurity": {"zoneTranser": null},
        "isVulnerability": false,
        "isAvailable": false,
        "drdEmailSent": false,
        "cves": [],
        "cveDetails": [],
        "dataBreachIPVulnerabilityId": "635af1cb3d7293714b1e66e0",
        "operatingsystem": "",
        "operatingsystemversion": "",
        "ports": [80, 8080, 443, 8081],
        "portListing": null,
        "description": null,
        "location": null,
        "domainStatus": "",
        "missingEPPCodes": null,
        "expiryDate": null,
        "siteStatusCode": null,
        "xssProtection": null,
        "secureCookie": null,
        "strictTransportSecurity": null,
        "xframeOptions": null,
        "cookiexssProtection": null,
        "contentSecurityPolicy": null,
        "overAllRiskRating": 1,
        "riskRating": 1,
        "openPortRiskRating": 1,
        "configRiskRating": 5,
        "safeMarkTime": null,
        "isSafe": false,
        "safeMarkedBy": null,
        "safeComments": null,
        "portSafeMarkTime": null,
        "isPortSafe": false,
        "portSafeMarkedBy": null,
        "portSafeComments": null,
        "dnsSafeMarkTime": null,
        "isDnsSafe": false,
        "dnsSafeMarkedBy": null,
        "dnsSafeComments": null,
        "notes": null,
        "openPortNotes": null,
        "configNotes": null,
        "portDescription": "You do not have any non-standard ports open.",
        "isThirdParty": false,
        "domainIpLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "openPortLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "configLastModifiedDate": "2022-10-27T21:02:03.241Z",
        "threatActors": [],
        "subDomainUID": "62986cfe3d729352d755fd43",
        "subDomainCreatedDate": "2022-06-02T07:55:42.670Z",
        "isNew": false
      }
    }
  ];
}
