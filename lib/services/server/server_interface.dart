import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printer_receiver/services/printer/printer_interface.dart';
import 'package:printer_receiver/services/server/server.dart';

abstract class ServerInterface {
  static final provider = Provider<ServerInterface>(
      (ref) => Server(ref.read(PrinterInterface.provider)));
  Future<void> createReceiver();
}
