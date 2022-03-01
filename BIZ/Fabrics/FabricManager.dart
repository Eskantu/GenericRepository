import '../ProductoManager.dart';
import '../UsuarioManager.dart';

class FabricManager {
  FabricManager();
  getUserManager() {
    return UsuarioManager.usuarioManager;
  }

  getProductoManager() {
    return ProductoManager.productoManager;
  }
}
