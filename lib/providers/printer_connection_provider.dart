import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/models/printer_connection_data.dart';

class PrinterConnectionProvider {
  static final provider = Provider((ref) => PrinterConnectionProvider());

  PrinterConnectionData printerConnectionData = const PrinterConnectionData('');
  void setIp(String value) {
    printerConnectionData = printerConnectionData.copyWith.ip(value);
  }
}
