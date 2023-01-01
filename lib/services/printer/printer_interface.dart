import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/services/printer/printer.dart';

abstract class PrinterInterface {
  static final provider = Provider<PrinterInterface>((ref) => Printer());
  Future<void> create();

  Future<void> print(String data);
}
