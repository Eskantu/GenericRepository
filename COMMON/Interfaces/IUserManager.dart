import '../Entidades/User.dart';
import 'IGenericManager.dart';

abstract class IUsuerManager extends IGenericManager<User> {
  User BuscarPorEmail(String email);
}
