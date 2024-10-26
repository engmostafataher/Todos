

import 'package:app_todos/features/home/presentation/views/home_screens.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeScreen = '/homescreen';
  static const KDone = '/done';
  static const KArsheive = '/arsheive';

  static final router = GoRouter(routes: [
    GoRoute(path: '/',builder: (context, state) => const HomeScreens(),),

  ]);

}
