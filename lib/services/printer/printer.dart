import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:printer_receiver/services/printer/printer_interface.dart';

class Printer implements PrinterInterface {
  late NetworkPrinter printer;
  late PosPrintResult result;

  @override
  Future<void> create() async {
    const PaperSize paper = PaperSize.mm80;
    final profile = await CapabilityProfile.load();
    printer = NetworkPrinter(paper, profile);
  }

  Future<void> _connect() async {
    result = await printer.connect('192.168.1.123', port: 9100);
  }

  void _disconnect() {
    printer.disconnect();
  }

  @override
  Future<void> print(String data) async {
    await _connect();
    if (result == PosPrintResult.success) {
      printer.text(data, styles: const PosStyles(bold: true));
      printer.feed(2);
      printer.cut();
    }
    _disconnect();
  }
}
