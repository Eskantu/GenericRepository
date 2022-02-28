import '../COMMON/Entidades/User.dart';
import '../COMMON/Interfaces/IGenericRepository.dart';
import '../COMMON/Interfaces/IUserManager.dart';
import 'GenericManager.dart';

class UsuarioManager extends GenericManager<User> implements IUsuerManager {
  @override
  User BuscarPorEmail(String email) {
    print('BuscarPorEmail');
    return User(
        uid: 'uid',
        email: 'email',
        photoUrl: 'photoUrl',
        displayName: 'displayName');
  }
}
