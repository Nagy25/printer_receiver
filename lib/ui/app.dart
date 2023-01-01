import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/services/server/server_interface.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
