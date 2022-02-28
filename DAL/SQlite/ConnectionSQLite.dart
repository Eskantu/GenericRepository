import '../../COMMON/Interfaces/IConnection.dart';

class ConnectionSQLite implements IConnection {
  ConnectionSQLite() {
    connect();
  }
  @override
  bool connect() {
    print('Conecata a la base de datos SQLite');
    return true;
  }

  @override
  bool disconnect() {
    print('Desconectada de la base de datos SQLite');
    return true;
  }

  @override
  query(String command) {
    print('Ejecutando query: $command');
    return true;
  }
}
