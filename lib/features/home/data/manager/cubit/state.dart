import 'package:app_todos/features/home/data/models/taskss.dart';

abstract class AppState {}
class InitialState extends AppState{}
class LoadingState extends AppState{}
class SuccessState extends AppState{
  final List<Taskss> listss;

  SuccessState({required this.listss});
}
class ErrorState extends AppState{}