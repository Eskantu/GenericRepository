abstract class IConnection {
  bool connect();
  bool disconnect();
  dynamic query(String command);
}
