import '../../COMMON/Interfaces/IConnection.dart';
import '../../COMMON/Interfaces/IGenericRepository.dart';

class SQLServerRepository<T> implements IGenericRepository<T> {
  SQLServerRepository(this._db);
  final IConnection _db;

  @override
  bool delete(T entity) {
    _db.query('Elimindo ${T} desde SQLServerRepository');
    return true;
  }

  @override
  T insert(T entity) {
    _db.query('Insertando ${T} desde SQLServerRepository');
    return entity;
  }

  @override
  List<T> read() {
    _db.query('Leendo ${T} desde SQLServerRepository');
    return [];
  }

  @override
  T update(T newEntity) {
    _db.query('Actualizando ${T} desde SQLServerRepository');
    return newEntity;
  }
}
