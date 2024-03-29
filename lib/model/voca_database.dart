import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';



class VocaDatabase {

  List vocaList = [];


  final _myBox = Hive.box('voca');


  void createInitialData() {
    vocaList = [
      ['단어','뜻'],
    ];
  }


  void loadData() {
    vocaList = _myBox.get('VOCALIST'); //key
  }


  void updateData() {
    _myBox.put('VOCALIST', vocaList);  //key, value
  }
}

