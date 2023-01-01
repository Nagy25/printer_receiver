import 'package:mini_server/mini_server.dart';
import 'package:printer_receiver/helpers/app_server.dart';
import 'package:printer_receiver/services/printer/printer_interface.dart';
import 'package:printer_receiver/services/server/server_interface.dart';

class Server implements ServerInterface {
  final PrinterInterface printer;

  const Server(this.printer);
  @override
  Future<void> createReceiver() async {
    final server = AppServer.miniServer;

    await printer.create();

    server.post('/printer', (httpRequest) async {
      final MiniResponse response =
          await MiniResponse.instance.init(httpRequest);
      print("hero   " + response.body.toString());
      printer.print(response.body.toString());
    });
  }
}
