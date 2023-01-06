import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:printer_receiver/generated/locale_keys.g.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextBox(
          header: LocaleKeys.enter_printer_ip.tr(),
          placeholder: '000.000.00.00:00',
        )
      ],
    );
  }
}
