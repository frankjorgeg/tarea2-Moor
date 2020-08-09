import 'package:bases_datos_moor/componentes/message_box.dart';
import 'package:bases_datos_moor/componentes/snack_message.dart';
import 'package:bases_datos_moor/data/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListMateriaPage extends StatefulWidget {
  @override
  _ListMateriaPageState createState() => _ListMateriaPageState();
}

class _ListMateriaPageState extends State<ListMateriaPage> {
  final _formKey = GlobalKey<FormState>();
  final materianameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    return FutureBuilder<List<Materia>>(
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
              'No hay materias registradas',
              style: TextStyle(fontSize: 28.0, color: Colors.red),
            ),
          );
        }
        return ListView(
          children: _listaMapMaterias(context, snapshot.data, database),
        );
      },
    );
  }

  List<Widget> _listaMapMaterias(
      BuildContext context, List<Materia> materias, AppDatabase database) {
    return materias.map((materia) {
      return Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.redAccent,
          child: Row(
            children: [
              Icon(
                Icons.delete_forever,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'ELIMINAR',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        secondaryBackground: Container(
          color: Colors.greenAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ACTUALIZAR',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ],
          ),
        ),
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            _delete(materia, database);
          } else if (direction == DismissDirection.endToStart) {
            _update(materia, database);
          }
        },
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.book,

              ),
              title: Text('${materia?.name}'),

              onTap: () {
                Navigator.pushNamed(context, 'update_materia_details', arguments: 'materia');
              },
            ),
            Divider(
              thickness: 2.0,
              color: Colors.lightBlue,
              indent: 70.0,
              endIndent: 20.0,
            )
          ],
        ),
      );
    }).toList();
  }

  void _delete(Materia materia, AppDatabase database) {
    messageBox(
        context: context,
        icon: Icons.delete_forever,
        title: '¿Eliminara la materia?',
        content:
            Text('${materia.name.toUpperCase()} '),
        onPressOkBtn: () {
          setState(() {
            //DBProvider.db.deleteUserById(user.id);
            database.materiaDao.deleteMateria(materia);
          });
          Navigator.of(context).pop();
        },
        onPressCancelBtn: () {
          setState(() {});
          Navigator.of(context).pop();
        });
  }

  void _update(Materia materia, AppDatabase database) {
    materianameController.text = materia.name;

    Widget form = Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
            controller: materianameController,
            validator: (value) {
              return value.isEmpty
                  ? 'El campo nombre no puede estar vacio'
                  : null;
            },
            decoration: InputDecoration(
              hintText: 'Digita el nombre',
              icon: Icon(Icons.book),
            ),
          ),

          SizedBox(
            height: 15.0,
          ),
          RaisedButton(
            child: Text('Actualizar'),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                //DBProvider.db.updateUser(user);
                database.materiaDao.updateMateria(Materia(
                    id: materia.id,

                    name: materianameController.text,));

                setState(() {});
                Scaffold.of(context).showSnackBar(snackMessage(
                    'La Materia ${materianameController.text} ha sido actualizada'));
                _formKey.currentState?.reset();
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
    messageBox(
      context: context,
      icon: Icons.edit,
      title: 'Actualizar la materia',
      content: form,
      onPressCancelBtn: () {
        setState(() {});
        Navigator.of(context).pop();
      },
    );
  }
}
