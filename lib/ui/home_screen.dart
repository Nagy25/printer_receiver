import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/providers/home_screen_notifier.dart';
import 'package:printer_receiver/ui/pages/home_page.dart';
import 'package:printer_receiver/ui/pages/notifications_page.dart';
import 'package:printer_receiver/ui/pages/settings_page.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text('Printer receiver'),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        selected: ref.watch(HomeScreenNotifier.provider),
        onChanged: (value) {
          ref.read(HomeScreenNotifier.provider.notifier).state = value;
        },
        displayMode: PaneDisplayMode.compact,
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.home),
            title: const Text('Home'),
            body: const HomePage(),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.home),
            title: const Text('Home'),
            body: const NotificationsPage(),
          ),
        ],
        footerItems: [
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('settings'),
            body: const SettingsPage(),
          )
        ],
      ),
    );
  }
}
