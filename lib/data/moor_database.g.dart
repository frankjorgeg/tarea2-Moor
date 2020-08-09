// GENERATED CODE - DO NOT MODIFY BY HAND

part of database;

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String lastName;
  final String username;
  final bool active;
  final DateTime created;
  User(
      {@required this.id,
      @required this.name,
      this.lastName,
      this.username,
      @required this.active,
      @required this.created});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      lastName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      active:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}active']),
      created: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || active != null) {
      map['active'] = Variable<bool>(active);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      active:
          active == null && nullToAbsent ? const Value.absent() : Value(active),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lastName: serializer.fromJson<String>(json['lastName']),
      username: serializer.fromJson<String>(json['username']),
      active: serializer.fromJson<bool>(json['active']),
      created: serializer.fromJson<DateTime>(json['created']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'lastName': serializer.toJson<String>(lastName),
      'username': serializer.toJson<String>(username),
      'active': serializer.toJson<bool>(active),
      'created': serializer.toJson<DateTime>(created),
    };
  }

  User copyWith(
          {int id,
          String name,
          String lastName,
          String username,
          bool active,
          DateTime created}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        active: active ?? this.active,
        created: created ?? this.created,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('username: $username, ')
          ..write('active: $active, ')
          ..write('created: $created')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              lastName.hashCode,
              $mrjc(username.hashCode,
                  $mrjc(active.hashCode, created.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.lastName == this.lastName &&
          other.username == this.username &&
          other.active == this.active &&
          other.created == this.created);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> lastName;
  final Value<String> username;
  final Value<bool> active;
  final Value<DateTime> created;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName = const Value.absent(),
    this.username = const Value.absent(),
    this.active = const Value.absent(),
    this.created = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    this.lastName = const Value.absent(),
    this.username = const Value.absent(),
    this.active = const Value.absent(),
    this.created = const Value.absent(),
  }) : name = Value(name);
  static Insertable<User> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> lastName,
    Expression<String> username,
    Expression<bool> active,
    Expression<DateTime> created,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lastName != null) 'last_name': lastName,
      if (username != null) 'username': username,
      if (active != null) 'active': active,
      if (created != null) 'created': created,
    });
  }

  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> lastName,
      Value<String> username,
      Value<bool> active,
      Value<DateTime> created}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      active: active ?? this.active,
      created: created ?? this.created,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('username: $username, ')
          ..write('active: $active, ')
          ..write('created: $created')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, maxTextLength: 50);
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  GeneratedTextColumn _lastName;
  @override
  GeneratedTextColumn get lastName => _lastName ??= _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn('last_name', $tableName, true,
        maxTextLength: 50);
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn('username', $tableName, true,
        maxTextLength: 255);
  }

  final VerificationMeta _activeMeta = const VerificationMeta('active');
  GeneratedBoolColumn _active;
  @override
  GeneratedBoolColumn get active => _active ??= _constructActive();
  GeneratedBoolColumn _constructActive() {
    return GeneratedBoolColumn('active', $tableName, false,
        defaultValue: Constant(true));
  }

  final VerificationMeta _createdMeta = const VerificationMeta('created');
  GeneratedDateTimeColumn _created;
  @override
  GeneratedDateTimeColumn get created => _created ??= _constructCreated();
  GeneratedDateTimeColumn _constructCreated() {
    return GeneratedDateTimeColumn('created', $tableName, false,
        defaultValue: Constant(DateTime.now()));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, lastName, username, active, created];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name'], _lastNameMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active'], _activeMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created'], _createdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Materia extends DataClass implements Insertable<Materia> {
  final int id;
  final String name;
  Materia({@required this.id, @required this.name});
  factory Materia.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Materia(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  MateriasCompanion toCompanion(bool nullToAbsent) {
    return MateriasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory Materia.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Materia(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Materia copyWith({int id, String name}) => Materia(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Materia(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Materia && other.id == this.id && other.name == this.name);
}

class MateriasCompanion extends UpdateCompanion<Materia> {
  final Value<int> id;
  final Value<String> name;
  const MateriasCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  MateriasCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
  }) : name = Value(name);
  static Insertable<Materia> custom({
    Expression<int> id,
    Expression<String> name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  MateriasCompanion copyWith({Value<int> id, Value<String> name}) {
    return MateriasCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MateriasCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MateriasTable extends Materias with TableInfo<$MateriasTable, Materia> {
  final GeneratedDatabase _db;
  final String _alias;
  $MateriasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  $MateriasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'materias';
  @override
  final String actualTableName = 'materias';
  @override
  VerificationContext validateIntegrity(Insertable<Materia> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Materia map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Materia.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MateriasTable createAlias(String alias) {
    return $MateriasTable(_db, alias);
  }
}

class UserMateria extends DataClass implements Insertable<UserMateria> {
  final int id;
  final int idUser;
  final int idmateria;
  UserMateria(
      {@required this.id, @required this.idUser, @required this.idmateria});
  factory UserMateria.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return UserMateria(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idUser:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_user']),
      idmateria:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idmateria']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idUser != null) {
      map['id_user'] = Variable<int>(idUser);
    }
    if (!nullToAbsent || idmateria != null) {
      map['idmateria'] = Variable<int>(idmateria);
    }
    return map;
  }

  UserMateriasCompanion toCompanion(bool nullToAbsent) {
    return UserMateriasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idUser:
          idUser == null && nullToAbsent ? const Value.absent() : Value(idUser),
      idmateria: idmateria == null && nullToAbsent
          ? const Value.absent()
          : Value(idmateria),
    );
  }

  factory UserMateria.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserMateria(
      id: serializer.fromJson<int>(json['id']),
      idUser: serializer.fromJson<int>(json['idUser']),
      idmateria: serializer.fromJson<int>(json['idmateria']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idUser': serializer.toJson<int>(idUser),
      'idmateria': serializer.toJson<int>(idmateria),
    };
  }

  UserMateria copyWith({int id, int idUser, int idmateria}) => UserMateria(
        id: id ?? this.id,
        idUser: idUser ?? this.idUser,
        idmateria: idmateria ?? this.idmateria,
      );
  @override
  String toString() {
    return (StringBuffer('UserMateria(')
          ..write('id: $id, ')
          ..write('idUser: $idUser, ')
          ..write('idmateria: $idmateria')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(idUser.hashCode, idmateria.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserMateria &&
          other.id == this.id &&
          other.idUser == this.idUser &&
          other.idmateria == this.idmateria);
}

class UserMateriasCompanion extends UpdateCompanion<UserMateria> {
  final Value<int> id;
  final Value<int> idUser;
  final Value<int> idmateria;
  const UserMateriasCompanion({
    this.id = const Value.absent(),
    this.idUser = const Value.absent(),
    this.idmateria = const Value.absent(),
  });
  UserMateriasCompanion.insert({
    this.id = const Value.absent(),
    @required int idUser,
    @required int idmateria,
  })  : idUser = Value(idUser),
        idmateria = Value(idmateria);
  static Insertable<UserMateria> custom({
    Expression<int> id,
    Expression<int> idUser,
    Expression<int> idmateria,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idUser != null) 'id_user': idUser,
      if (idmateria != null) 'idmateria': idmateria,
    });
  }

  UserMateriasCompanion copyWith(
      {Value<int> id, Value<int> idUser, Value<int> idmateria}) {
    return UserMateriasCompanion(
      id: id ?? this.id,
      idUser: idUser ?? this.idUser,
      idmateria: idmateria ?? this.idmateria,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idUser.present) {
      map['id_user'] = Variable<int>(idUser.value);
    }
    if (idmateria.present) {
      map['idmateria'] = Variable<int>(idmateria.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserMateriasCompanion(')
          ..write('id: $id, ')
          ..write('idUser: $idUser, ')
          ..write('idmateria: $idmateria')
          ..write(')'))
        .toString();
  }
}

class $UserMateriasTable extends UserMaterias
    with TableInfo<$UserMateriasTable, UserMateria> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserMateriasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idUserMeta = const VerificationMeta('idUser');
  GeneratedIntColumn _idUser;
  @override
  GeneratedIntColumn get idUser => _idUser ??= _constructIdUser();
  GeneratedIntColumn _constructIdUser() {
    return GeneratedIntColumn(
      'id_user',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idmateriaMeta = const VerificationMeta('idmateria');
  GeneratedIntColumn _idmateria;
  @override
  GeneratedIntColumn get idmateria => _idmateria ??= _constructIdmateria();
  GeneratedIntColumn _constructIdmateria() {
    return GeneratedIntColumn(
      'idmateria',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, idUser, idmateria];
  @override
  $UserMateriasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_materias';
  @override
  final String actualTableName = 'user_materias';
  @override
  VerificationContext validateIntegrity(Insertable<UserMateria> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_user')) {
      context.handle(_idUserMeta,
          idUser.isAcceptableOrUnknown(data['id_user'], _idUserMeta));
    } else if (isInserting) {
      context.missing(_idUserMeta);
    }
    if (data.containsKey('idmateria')) {
      context.handle(_idmateriaMeta,
          idmateria.isAcceptableOrUnknown(data['idmateria'], _idmateriaMeta));
    } else if (isInserting) {
      context.missing(_idmateriaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserMateria map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserMateria.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserMateriasTable createAlias(String alias) {
    return $UserMateriasTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $MateriasTable _materias;
  $MateriasTable get materias => _materias ??= $MateriasTable(this);
  $UserMateriasTable _userMaterias;
  $UserMateriasTable get userMaterias =>
      _userMaterias ??= $UserMateriasTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as AppDatabase);
  MateriaDao _materiaDao;
  MateriaDao get materiaDao => _materiaDao ??= MateriaDao(this as AppDatabase);
  UserMateriaDao _userMateriaDao;
  UserMateriaDao get userMateriaDao =>
      _userMateriaDao ??= UserMateriaDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, materias, userMaterias];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UserDaoMixin on DatabaseAccessor<AppDatabase> {
  $UsersTable get users => attachedDatabase.users;
}
mixin _$MateriaDaoMixin on DatabaseAccessor<AppDatabase> {
  $MateriasTable get materias => attachedDatabase.materias;
}
mixin _$UserMateriaDaoMixin on DatabaseAccessor<AppDatabase> {
  $UserMateriasTable get userMaterias => attachedDatabase.userMaterias;
}
