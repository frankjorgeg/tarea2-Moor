//import 'package:bases_datos_moor/componentes/message_box.dart';

import 'package:bases_datos_moor/data/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/moor_database.dart';


class ListUserMateriaPage extends StatefulWidget {
  @override
   int usuarioID;
  ListUserMateriaPage({this.usuarioID});

  _ListUserMateriaPageState createState() => _ListUserMateriaPageState();
}

class _ListUserMateriaPageState extends State<ListUserMateriaPage> {
  final _formKey = GlobalKey<FormState>();
  final userMaterianameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    print('UsuarioID==>'+widget.usuarioID.toString());
    return Scaffold(
      appBar: AppBar(title: Text('Listado de Materias')),
      body: FutureBuilder<List<Materia>>(
      future: database.materiaDao.getAllMaterias(),
      builder: (BuildContext context, AsyncSnapshot<List<Materia>> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.data.length == 0) {
          return Center(
            child: Text(
              'No hay materias registradas en este usuario',
              style: TextStyle(fontSize: 28.0, color: Colors.red),
            ),
          );
        }
        return ListView(
          children: _listaMapMateriasByUser(context, snapshot.data, database),
        );
      },
    )
      );
  }

  List<Widget> _listaMapMateriasByUser(
      BuildContext context, List<Materia> materia, AppDatabase database) {
    return materia.map((materia) {
      var _isChecked;
      return Column(
          children: <Widget>[
            CheckboxListTile(
             
              value: true,
             title:Text(materia.name.toString().toUpperCase()),
              subtitle: Text('MateriaID: ${materia.id}'),
              onChanged: (value) => {

              },


            ),
            Divider(
              thickness: 2.0,
              color: Colors.lightBlue,
              indent: 70.0,
              endIndent: 20.0,
            )
          ],
        );

    }).toList();
  }

//  void _delete(UserMateria userMateria, AppDatabase database) {
//    messageBox(
//        context: context,
//        icon: Icons.delete_forever,
//        title: '¿Eliminara la materia?',
//        content:
//            Text('${userMateria.id.toString().toUpperCase()} '),
//        onPressOkBtn: () {
//          setState(() {
//            //DBProvider.db.deleteUserById(user.id);
//            database.userMateriaDao.deleteUserMateria(userMateria);
//          });
//          Navigator.of(context).pop();
//        },
//        onPressCancelBtn: () {
//          setState(() {});
//          Navigator.of(context).pop();
//        });
//  }


}
