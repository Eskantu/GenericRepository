import '../Entidades/Producto.dart';
import 'IGenericManager.dart';

abstract class IProductoManager extends IGenericManager<Producto> {
  List<Producto> getProductosByCategoria(int idCategoria);
}
