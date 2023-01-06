import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/generated/locale_keys.g.dart';
import 'package:printer_receiver/providers/printer_connection_provider.dart';
import 'package:printer_receiver/ui/widgets/page_container.dart';

class PrinterPage extends ConsumerWidget {
  const PrinterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectionProvider = ref.watch(PrinterConnectionProvider.provider);
    return PageContainer(
        child: Column(
      children: [
        Form(
          key: connectionProvider.formKey,
          child: TextBox(
            header: LocaleKeys.enter_printer_ip.tr(),
            placeholder: '000.000.00.00:00',
            onSubmitted: (value) {
              connectionProvider.setIp(value);
            },
          ),
        )
      ],
    ));
  }
}
