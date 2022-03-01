import '../COMMON/Interfaces/IGenericManager.dart';
import '../COMMON/Interfaces/IGenericRepository.dart';
import 'Fabrics/FabricRepository.dart';

class GenericManager<T> implements IGenericManager<T> {
  late IGenericRepository<T> repository;
  GenericManager() {
    repository = RepositoryFactory("SQLite").getRepository();
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
