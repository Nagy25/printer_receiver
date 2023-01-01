import 'package:mini_server/mini_server.dart';
import 'package:printer_receiver/helpers/app_server.dart';
import 'package:printer_receiver/services/server/server_interface.dart';

class Server implements ServerInterface {
  @override
  void createReceiver() {
    final server = AppServer.miniServer;
    server.post('/printer', (httpRequest) async {
      final MiniResponse response =
          await MiniResponse.instance.init(httpRequest);
      print("hero   " + response.body.toString());
    });
  }
}
