import 'dart:ffi';

import'package:flutter/material.dart';
import 'package:app_proyectofinal/models/group.dart';


class GroupsScreen extends StatefulWidget {
  const GroupsScreen({Key? key}): super(key: key);

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {

  final _groups= <Group>[];
  Future<Void> _addGroup() async{
    final result =await showDialog(
      context: context,
       builder: (_)=> const AddGroupScreen(),
       );
       if(result!= null){
        
       }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      title: const Text('Lista de Alimentos'),
    ),
    body: _groups.isEmpty
    ?const Center(
      child: Text(''),
    )
    :GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
         ),
         itemCount: _groups.length,
         itemBuilder: (context, index){
          final group = _groups[index];
          return _GroupItem(
            onTap: ()=> null,
            group: group,
            );
    
         },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton.extended(
      label: const Text('Frutas'), 
      onPressed: null,
      ),
    );
  }
}