import '../COMMON/Interfaces/IGenericManager.dart';
import '../COMMON/Interfaces/IGenericRepository.dart';
import 'FabricRepository.dart';

class GenericManager<T> implements IGenericManager<T> {
  late IGenericRepository<T> repository;
  GenericManager() {
    repository = FabricRepository<T>("SQLite") as IGenericRepository<T>;
  }

  @override
  T actualizar(T newEntity) {
    return repository.update(newEntity);
  }

  @override
  T crear(T entity) {
    return repository.insert(entity);
  }

  @override
  bool eliminar(T entity) {
    return repository.delete(entity);
  }

  @override
  List<T> obtener() {
    return repository.read();
  }
}
