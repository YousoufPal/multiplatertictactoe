import 'package:tictactoe/resources/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void CreateRoom(String name) {
    if (name.isNotEmpty) {
      _socketClient.emit('createRoom', {
        'name': name,
      });
    }
  }
}