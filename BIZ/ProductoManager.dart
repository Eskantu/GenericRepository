import '../COMMON/Entidades/Producto.dart';
import '../COMMON/Interfaces/IGenericRepository.dart';
import '../COMMON/Interfaces/IProductoManager.dart';
import '../COMMON/Interfaces/IUserManager.dart';
import 'GenericManager.dart';

class ProductoManager extends GenericManager<Producto>
    implements IProductoManager {
  @override
  List<Producto> getProductosByCategoria(int idCategoria) {
    print('ProductoManager.getProductosByCategoria');
    return [];
  }
}
