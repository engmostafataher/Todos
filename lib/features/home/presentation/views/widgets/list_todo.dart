import 'package:app_todos/core/utils/datass.dart';
import 'package:app_todos/features/home/data/manager/cubit/cubit.dart';
import 'package:app_todos/features/home/data/manager/cubit/state.dart';
import 'package:app_todos/features/home/presentation/views/widgets/body_todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListTodo extends StatelessWidget {
  const ListTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewCubit, AppState>(builder: (context, state) {
      if (state is SuccessState) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return BodyTodo(
                vartitle: '${state.listss[index].titles}',
                vardata: '${state.listss[index].datas}',
                vartime: '${state.listss[index].times}',
                varstuts:state.listss[index].status,
                indexs: index);
          },
          itemCount: Datass.allTasks.length,
        );
      } else if (state is ErrorState) {
        return Text('Error');
      }
      else{
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
