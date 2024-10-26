import 'package:app_todos/core/utils/colorss.dart';
import 'package:app_todos/core/utils/datass.dart';
import 'package:app_todos/features/home/data/models/taskss.dart';
import 'package:app_todos/features/home/presentation/views/widgets/all_the_lstanbui.dart';
import 'package:flutter/material.dart';

class BodyTodo extends StatefulWidget {
  final String vartitle;
  final String vardata;
  final String vartime;
  final int indexs;
  final bool varstuts;

  const BodyTodo(
      {super.key,
      required this.vartitle,
      required this.vardata,
      required this.vartime,
      required this.indexs,
      required this.varstuts});

  @override
  State<BodyTodo> createState() => _BodyTodoState();
}

class _BodyTodoState extends State<BodyTodo> {
  bool doneOrnot = false;
  deleteTask() {
    Datass.allTasks.remove(Datass.allTasks[widget.indexs]);
  }

  addCatogryTasks() {
    if (doneOrnot == true) {
      Datass.addCatogry.add(
        Taskss(
            times: '${widget.vartime}',
            titles: '${widget.vartitle}',
            datas: '${widget.vardata}',
            status: true),
      );
      print(widget.indexs);
    } else if (doneOrnot == false) {
      Datass.addCatogry.remove(
        Taskss(
            times: '${widget.vartime}',
            titles: '${widget.vartitle}',
            datas: '${widget.vardata}',
            status: false),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 199, 192, 192),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colorss.backgroundColors,
          child: Text(
            '${widget.vartime}',
            style: TextStyle(
              color: doneOrnot ? Colors.black : Colors.white,
              fontSize: 12,
              decoration:
                  doneOrnot ? TextDecoration.lineThrough : TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        title: Text(
          'Title:${widget.vartitle}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration:
                doneOrnot ? TextDecoration.lineThrough : TextDecoration.none,
            color: doneOrnot ? Colors.black : Colors.white,
          ),
        ),
        subtitle: Text(
          'Data:${widget.vardata}',
          style: TextStyle(
            decoration:
                doneOrnot ? TextDecoration.lineThrough : TextDecoration.none,
            color: doneOrnot ? Colors.black : Colors.white,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: doneOrnot ? Icon(Icons.check) : Icon(Icons.close),
              color: doneOrnot ? Colors.black : Colors.red,

              // Icon(Icons.check_box, color: Colors.green),
              onPressed: () {
                setState(() {
                  doneOrnot = !doneOrnot;
                  addCatogryTasks();
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.grey),
              onPressed: () {
                setState(() {
                  deleteTask();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
