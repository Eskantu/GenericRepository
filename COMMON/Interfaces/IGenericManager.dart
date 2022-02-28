abstract class IGenericManager<T> {
  T crear(T entity);
  List<T> obtener();
  T actualizar(T newEntity);
  bool eliminar(T entity);
}
