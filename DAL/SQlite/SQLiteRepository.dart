import '../../COMMON/Interfaces/IConnection.dart';
import '../../COMMON/Interfaces/IGenericRepository.dart';

class SQLiteRepository<T> implements IGenericRepository<T> {
  SQLiteRepository(this._db);
  final IConnection _db;

  @override
  bool delete(T entity) {
    _db.query("Eliminando ${T} desde SQLiteRepository");
    return true;
  }

  @override
  T insert(T entity) {
    _db.query("Insertando ${T} desde SQLiteRepository");
    return entity;
  }

  @override
  List<T> read() {
    _db.query("Leer ${T} desde SQLiteRepository");
    return [];
  }

  @override
  T update(T newEntity) {
    _db.query("Actualizando ${T} desde SQLiteRepository");
    return newEntity;
  }
}
