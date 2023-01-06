import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/models/printer_connection_data.dart';

class PrinterConnectionProvider {
  static final provider =
      Provider.autoDispose((ref) => PrinterConnectionProvider._());

  PrinterConnectionProvider._();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  PrinterConnectionData printerConnectionData = const PrinterConnectionData('');
  void setIp(String value) {
    printerConnectionData = printerConnectionData.copyWith.ip(value);
  }
}
