import '../../COMMON/Interfaces/IConnection.dart';

class ConnectionSQLServer implements IConnection {

static final ConnectionSQLServer connection = ConnectionSQLServer._();

  ConnectionSQLServer._();
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
