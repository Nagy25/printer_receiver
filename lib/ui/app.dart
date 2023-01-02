import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/services/server/server_interface.dart';
import 'package:printer_receiver/services/system_tray/app_system_tray.dart';
import 'package:printer_receiver/services/system_tray/app_window_tray.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    ref.read(ServerInterface.provider).createReceiver();

    ref.read(AppSystemTray.provider).initSystemTray();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ref.read(AppWindowTray.provider).appWindow.hide();
            },
            child: Text("close")),
      ),
    );
  }
}
