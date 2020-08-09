part of database;

@UseDao(tables: [UserMaterias])
class UserMateriaDao extends DatabaseAccessor<AppDatabase> with _$UserMateriaDaoMixin {
  final AppDatabase db;

  UserMateriaDao(this.db) : super(db);

  Future<List<UserMateria>> getAllUserMaterias() => select(userMaterias).get();

  Stream<List<UserMateria>> watchAllUSerMAterias() => select(userMaterias).watch();

  Future<UserMateria> firstUserMateria() => select(userMaterias).getSingle();

  Future insertUserMateria(UserMateria materia) => into(userMaterias).insert(materia);

  Future updateUserMateria(UserMateria materia) => update(userMaterias).replace(materia);

  Future deleteUserMateria(UserMateria materia) => delete(userMaterias).delete(materia);

  Future<UserMateria> findUserMateriaById(int id) =>
      (select(userMaterias)..where((u) => u.id.equals(id))).getSingle();
}
