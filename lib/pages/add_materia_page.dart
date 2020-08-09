import 'package:bases_datos_moor/componentes/snack_message.dart';
import 'package:bases_datos_moor/data/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddMateriaPage extends StatefulWidget {
  @override
  _AddMateriaPageState createState() => _AddMateriaPageState();
}

class _AddMateriaPageState extends State<AddMateriaPage> {
  final _formKey = GlobalKey<FormState>();

  final materianameController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: materianameController,
              validator: (value) {
                return value.isEmpty
                    ? 'El campo materia no puede estar vacio'
                    : null;
              },
              decoration: InputDecoration(
                hintText: 'Digite el nombre',
                icon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),

            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              child: Text('Guardar'),
              onPressed: () {
                if (_formKey.currentState.validate()) {
//
                  database.materiaDao
                      .insertMateria(Materia(name: materianameController.text));
                  Scaffold.of(context).showSnackBar(snackMessage(
                      'La Materia ${materianameController.text} ha sido creada'));
                  _formKey.currentState?.reset();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
