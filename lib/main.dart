

import 'package:app_proyectofinal/ui/groups_screm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
const MyApp ({Key? key}): super (key: key);

 @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Lista de alimentos',
    theme: ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(fontWeight: FontWeight.w900),

      )
    ),
    home: const GroupsScreen(),
  );
}

}