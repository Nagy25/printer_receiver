import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/generated/locale_keys.g.dart';
import 'package:printer_receiver/services/system_tray/app_window_tray.dart';
import 'package:system_tray/system_tray.dart';

class AppSystemTray {
  static final provider = Provider<AppSystemTray>(
      (ref) => AppSystemTray(ref.read(AppWindowTray.provider)));

  final AppWindowTray _appWindowTray;

  const AppSystemTray(this._appWindowTray);

  Future<void> initSystemTray() async {
    const String path = 'assets/app_icon.ico';

    final AppWindow appWindow = _appWindowTray.appWindow;

    final SystemTray systemTray = SystemTray();

    // We first init the systray menu
    await systemTray.initSystemTray(
      title: "system tray",
      iconPath: path,
    );

    // create context menu
    final Menu menu = Menu();
    await menu.buildFrom([
      MenuItemLabel(
        label: LocaleKeys.exit.tr(),
        onClicked: (menuItem) {
          appWindow.close();
        },
      )
    ]);

    // set context menu
    await systemTray.setContextMenu(menu);

    // handle system tray event
    systemTray.registerSystemTrayEventHandler((eventName) {
      debugPrint("eventName: $eventName");
      if (eventName == kSystemTrayEventClick) {
        appWindow.show();
      } else if (eventName == kSystemTrayEventRightClick) {
        systemTray.popUpContextMenu();
      }
    });
  }
}
