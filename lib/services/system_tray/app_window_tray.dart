import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:system_tray/system_tray.dart';

class AppWindowTray {
  static final provider =
      Provider<AppWindowTray>((ref) => AppWindowTray(AppWindow()));

  final AppWindow appWindow;

  const AppWindowTray(this.appWindow);
}
