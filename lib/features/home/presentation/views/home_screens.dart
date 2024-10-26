import 'package:app_todos/core/utils/colorss.dart';
import 'package:app_todos/core/utils/datass.dart';
import 'package:app_todos/features/home/presentation/views/widgets/list_archive.dart';
import 'package:app_todos/features/home/presentation/views/widgets/list_done.dart';
import 'package:app_todos/features/home/presentation/views/widgets/list_todo.dart';
import 'package:app_todos/features/home/presentation/views/widgets/text_forms.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreens
 extends StatefulWidget {
  const HomeScreens
  ({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final ControllerTitle = TextEditingController();
  final ControllerData = TextEditingController();
  final ControllerTime = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> screens = [const ListTodo(), const ListDone(), const ListArchive()];
  int x = 0;
  bool isSheetOpen = false;
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colorss.backgroundColors,
        centerTitle: true,
        title: const Text('App Todos',style: TextStyle(color: Colors.white),),
      ),
        bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          child: CurvedNavigationBar(
            color: Color(0xff808000),
            backgroundColor: Colors.white,
            items: <Widget>[
              Icon(
                Icons.task,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.done,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.archive,
                size: 20,
                color: Colors.white,
              ),
            ],
            index: x,
            onTap: (index) {
              setState(() {
                x = index;
              });
              //Handle button tap
            },
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isSheetOpen = !isSheetOpen;
          });
          if (isSheetOpen == true) {
            // insertDatabasa();
            scaffoldKey.currentState!.showBottomSheet(
              (context) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color(0xff808000),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    child: Column(
                      children: [
                        TextForms(
                          nameController: ControllerTitle,
                          keyboardText: TextInputType.text,
                          labelTexts: 'Title',
                          hintTexts: 'Please add title',
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: TextFormField(
                            onTap: () {
                              showDatePicker(
                                      context: context,
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2025),
                                      initialDate: DateTime.now())
                                  .then((onValue) {
                                    
                                setState(() {
                                

                                  ControllerData.text =DateFormat.MMMMd().format((onValue!));
                                });
                              });
                            },
                            controller: ControllerData,
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              labelText: 'Please Click To Choose Day',
                              labelStyle: TextStyle(
                                  color: Colors.white, fontFamily: 'Regular'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: TextFormField(
                            onTap: () {
                              showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now())
                                  .then((Value) {
                                
                                // DateFormat.Hms().format( (!onValue));
                                setState(() {
                                  ControllerTime.text = DateFormat('hh:mm:a').format(DateTime(
                                  Value!.hour,
                                  Value.minute,
                                ));
                                });
                              });
                            },
                            
                            controller: ControllerTime,
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              labelText: 'Please Click To Choose Time',
                              labelStyle: TextStyle(
                                  color: Colors.white, fontFamily: 'Regular'),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            );
          } else {
            Datass.addNewTask(
              
                ControllerTitle.text, ControllerData.text, ControllerTime.text);
                  setState(() {
              Navigator.pop(context);
            });
            
          
          }
        },
        child: isSheetOpen
            ? Icon(
                Icons.edit,
                color: Colors.white,
              )
            : Icon(
                Icons.add,
                color: Colors.white,
              ),
      ),
        body: screens[x],
    );
  }
}