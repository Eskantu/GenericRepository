import '../BIZ/Fabrics/FabricManager.dart';
import '../BIZ/ProductoManager.dart';
import '../BIZ/UsuarioManager.dart';
import '../COMMON/Entidades/Producto.dart';
import '../COMMON/Entidades/User.dart';

void main() {
  UsuarioManager usuario = FabricManager().getUserManager();
  User user = User(
      uid: 'uid',
      email: 'email',
      photoUrl: 'photoUrl',
      displayName: 'displayName');
  print(usuario.crear(user));
  print(usuario.actualizar(user));
  print(usuario.eliminar(user));
  print(usuario.obtener());
  print(usuario.BuscarPorEmail('email'));

  ProductoManager producto = FabricManager().getProductoManager();
  Producto p =
      Producto(idCategoria: 0, nombre: 'nombre', descripcion: 'descripcion');
  print(producto.crear(p));
  print(producto.actualizar(p));
  print(producto.eliminar(p));
  print(producto.obtener());
  print(producto.getProductosByCategoria(p.idCategoria));
}
