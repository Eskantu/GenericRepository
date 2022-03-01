import '../../COMMON/Interfaces/IConnection.dart';
import '../../COMMON/Interfaces/IGenericRepository.dart';
import '../../DAL/SQLServer/ConnectionSQLServer.dart';
import '../../DAL/SQLServer/SQLServerRepository.dart';
import '../../DAL/SQlite/ConnectionSQLite.dart';
import '../../DAL/SQlite/SQLiteRepository.dart';

class RepositoryFactory {
  static IConnection? _connection;
  final String type;
  RepositoryFactory(this.type);
  IConnection? get connection {
    if (_connection != null) return _connection;
    switch (type) {
      case 'SQLite':
        _connection = ConnectionSQLite.connection;
        break;
      case 'SQLServer':
        _connection = ConnectionSQLServer.connection;
        break;
      default:
        throw Exception('Invalid type');
    }
    _connection?.connect();
    return _connection;
  }

  IGenericRepository<T> getRepository<T>() {
    if (type == "SQLite") {
      return SQLiteRepository<T>(connection!);
    } else {
      return SQLServerRepository<T>(connection!);
    }
  }
}
