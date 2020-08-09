import 'package:bases_datos_moor/pages/home_page.dart';
import 'package:bases_datos_moor/pages/add_materia_page.dart';
import 'package:bases_datos_moor/pages/list_user_page.dart';
import 'package:bases_datos_moor/pages/list_materia_page.dart';
import 'package:bases_datos_moor/pages/list_user_materia_page.dart';
import 'package:bases_datos_moor/pages/add_user_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/moor_database.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final db = AppDatabase();

    return Provider(
      create: (_) => db,
      dispose: (context, db) => db.close(),
      child: MaterialApp(
        title: 'Tarea 3 Moor',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/':(context)=> HomePage(),
          'agregar_usuario':(context)=> AddUserPage(),
          'agregar_materia':(context)=> AddMateriaPage(),
          'lista_usuario':(context)=> ListUserPage(),
          'lista_materia':(context)=> ListMateriaPage(),
          'lista_materia_usuario':(context)=> ListUserMateriaPage(),
        },
        initialRoute: '/',

      ),
    );
  }
}
