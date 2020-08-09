part of database;

@UseDao(tables: [Materias])
class MateriaDao extends DatabaseAccessor<AppDatabase> with _$MateriaDaoMixin {
  final AppDatabase db;

  MateriaDao(this.db) : super(db);

  Future<List<Materia>> getAllMaterias() => select(materias).get();

  Stream<List<Materia>> watchAllMAterias() => select(materias).watch();

  Future<Materia> firstMateria() => select(materias).getSingle();

  Future insertMateria(Materia materia) => into(materias).insert(materia);

  Future updateMateria(Materia materia) => update(materias).replace(materia);

  Future deleteMateria(Materia materia) => delete(materias).delete(materia);

  Future<Materia> findMateriaById(int id) =>
      (select(materias)..where((u) => u.id.equals(id))).getSingle();
}
