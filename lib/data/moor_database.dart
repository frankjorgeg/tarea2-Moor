library database;

import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'moor_database.g.dart';

part 'daos/user_dao.dart';
part 'daos/materia_dao.dart';
part 'daos/user_materia_dao.dart';




@DataClassName('User')
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name =>text().withLength(max: 50)();

  TextColumn get lastName => text().withLength(max: 50).nullable()();

  TextColumn get username => text().withLength(max: 255).nullable()();

  BoolColumn get active => boolean().withDefault(Constant(true))();

  DateTimeColumn get created =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

@DataClassName('Materia')
class Materias extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name =>text().withLength(max: 50)();

}

@DataClassName('UserMateria')
class UserMaterias extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get idUser =>integer()();
  IntColumn get idmateria =>integer()();

}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}


@UseMoor(tables: [Users,Materias,UserMaterias], daos: [UserDao,MateriaDao,UserMateriaDao])
class AppDatabase extends _$AppDatabase {
//  AppDatabase() : super(_openConnection());

  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 2;
}
