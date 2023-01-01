import 'package:mini_server/mini_server.dart';

class AppServer {
  factory AppServer() {
    return _instance;
  }

  AppServer._privateConstructor();

  static final AppServer _instance = AppServer._privateConstructor();

  static final miniServer = MiniServer(
    host: 'localhost',
    port: 8080,
  );
}
