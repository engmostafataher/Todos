import 'package:app_todos/features/home/data/models/taskss.dart';
import 'package:flutter/material.dart';

abstract class Datass {
  static List<Taskss> allTasks = [
   Taskss(titles: 'mostafa', datas: '2/12/2020', times: '10:10', status: true)
  ];

  static addNewTask(
    String titles,
    String datas,
    String times,
  ) {
    allTasks
        .add(Taskss(titles: titles, datas: datas, times: times, status: false));
    
  }

  static List<Taskss> addCatogry = [];
  static List<Taskss>  addDelete = [];

}
