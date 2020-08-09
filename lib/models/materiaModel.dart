class MateriaModel {
  int id;
  String name;

  MateriaModel({this.id, this.name});

  //Constructor
  MateriaModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }

  //Method
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Nombre: $name ($id)';
  }
}
