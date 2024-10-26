import 'package:app_todos/features/home/data/manager/cubit/state.dart';
import 'package:app_todos/features/home/data/manager/local_data_basa.dart';
import 'package:app_todos/features/home/data/models/taskss.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewCubit extends Cubit <AppState> {
  NewCubit() : super(InitialState());
  List<Taskss>? listss;
  String error = '';

  get() async {
    try {
      emit(LoadingState());
      LocalDataBasa localDataBasa = LocalDataBasa();
      listss = localDataBasa.getDataFrombases(listss);
      emit(SuccessState(listss: listss!));
    } catch (e) {
      error = e.toString();
      emit(ErrorState());
    }
  }
}
