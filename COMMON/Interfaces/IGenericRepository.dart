abstract class IGenericRepository<T> {
  T insert(T entity);
  List<T> read();
  T update(T newEntity);
  bool delete(T entity);
}
