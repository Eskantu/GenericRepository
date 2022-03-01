# Genericos con Dart

> Este es un ejemplo de como implementar la arquitectura N-Layers en Dart haciendo uso de programacion generica, no se hace una conexion real a una BD pero se tiene todos los metodos necesarios.

```
│ 
│   
├───.vscode
│       launch.json
│       
├───BIZ
│   │   ProductoManager.dart
│   │   UsuarioManager.dart
│   │   
│   └───Fabrics
│           FabricManager.dart
│           FabricRepository.dart
│
├───COMMON
│   ├───Entidades
│   │       Producto.dart
│   │       User.dart
│   │       
│   └───Interfaces
│           IConnection.dart
│           IGenericManager.dart
│           IGenericRepository.dart
│           IProductoManager.dart
│           IUserManager.dart
│
├───DAL
│   ├───SQlite
│   │       ConnectionSQLite.dart
│   │       SQLiteRepository.dart
│   │
│   └───SQLServer
│           ConnectionSQLServer.dart
│           SQLServerRepository.dart
│
└───lib
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
