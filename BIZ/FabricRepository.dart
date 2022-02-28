import '../COMMON/Interfaces/IGenericRepository.dart';
import '../DAL/SQLServer/ConnectionSQLServer.dart';
import '../DAL/SQLServer/SQLServerRepository.dart';
import '../DAL/SQlite/ConnectionSQLite.dart';
import '../DAL/SQlite/SQLiteRepository.dart';

IGenericRepository FabricRepository<T>(String type) {
  if (type == "SQLite") {
    return SQLiteRepository<T>(ConnectionSQLite());
  } else {
    return SQLServerRepository<T>(ConnectionSQLServer());
  }
}
