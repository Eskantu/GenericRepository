# Genericos con Dart

> Este es un ejemplo de como implementar la arquitectura N-Layers en Dart haciendo uso de programacion generica, no se hace una conexion real a una BD pero se tiene todos los metodos necesarios.


Se propone la siguiente estructura de carpetas
```
│ 
│   
├───.vscode -> generado automaticamente por Visual Code
│       launch.json
│       
├───BIZ -> Aquí van los managers que hacer validaciones y manipulacion de información 
│   │   ProductoManager.dart
│   │   UsuarioManager.dart
│   │   
│   └───Fabrics -> Patron Factory para la creacion de objetos (Opcional) 
│           FabricManager.dart
│           FabricRepository.dart
│
├───COMMON -> Objetos comunes como entidades, interfaces, herramientas varias
│   ├───Entidades -> Entidades de la Base de datos
│   │       Producto.dart
│   │       User.dart
│   │       
│   └───Interfaces -> interfaces de programación que son implementadas en diferentes clases
│           IConnection.dart
│           IGenericManager.dart
│           IGenericRepository.dart
│           IProductoManager.dart
│           IUserManager.dart
│
├───DAL -> Aqui todo lo relacionado a la base de datos
│   ├───SQlite -> carpeta por tipo de BD
│   │       ConnectionSQLite.dart
│   │       SQLiteRepository.dart
│   │
│   └───SQLServer
│           ConnectionSQLServer.dart
│           SQLServerRepository.dart
│
└───lib -> Punto de inicio o UI
        main.dart
```

## DAL

Se suguiere que en esta carpeta se guarde todo lo relacionado a la BD

* Clases para conexion
* Metodos para manipular informacion
* Plugins para la BD

### SQLite

* `SQliteRepository<T>`: implementa `IGenericRepository<T>` que es una interfaces implicita en Dart.
*  `ConnectionSQLite`: Implementa `IConnection` que es una terface implicita en dart y contiene metodos para la conexion a la BD SQlite

### SQLServer

* `SQLServerRepository<T>`: implementa `IGenericRepository<T>` que es una interfaces implicita en Dart.
*  `ConnectionSQLServer`: Implementa `IConnection` que es una terface implicita en dart y contiene metodos para la conexion a la BD SQLServer.,
