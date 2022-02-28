import '../../COMMON/Interfaces/IConnection.dart';

class ConnectionSQLServer implements IConnection {
  ConnectionSQLServer() {
    connect();
  }
  @override
  bool connect() {
    print('Connected to SQL Server');
    return true;
  }

  @override
  bool disconnect() {
    print('Disconnected from SQL Server');
    return true;
  }

  @override
  query(String command) {
    print('Executing query: $command');
    return true;
  }
}
