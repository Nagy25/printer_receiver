// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "home": "Home",
  "notifications": "Notifications",
  "settings": "Settings",
  "printer": "Printer",
  "usb": "USB",
  "network": "Network",
  "ip": "IP",
  "connect": "Connect",
  "disconnect": "Disconnect",
  "connected": "connected",
  "disconnected": "disconnected",
  "connecting": "connecting",
  "try_again": "Try again",
  "close": "Close",
  "exit": "Exit",
  "something_wrong": "something wrong",
  "scanning": "scanning",
  "scan": "Scan"
};
static const Map<String,dynamic> ar = {
  "home": "الرئيسية",
  "notifications": "الااشعارات",
  "settings": "الاعدادات",
  "printer": "الطابعة",
  "usb": "مخرج يو اس بي",
  "network": "الشبكة",
  "ip": "الاي بي",
  "connect": "اتصل",
  "disconnect": "فصل",
  "connected": "متصل",
  "disconnected": "غير متصل",
  "connecting": "جاري الاتصال",
  "try_again": "حاول مره اخري",
  "close": "اغلاق",
  "exit": "خروج",
  "something_wrong": "حدث خطأ ما",
  "scanning": "جاري البحث",
  "scan": "بحث"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ar": ar};
}
