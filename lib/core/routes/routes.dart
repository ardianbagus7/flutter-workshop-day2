import 'package:go_router/go_router.dart';
import 'package:seabank_app/screen/auth/auth.dart';
import 'package:seabank_app/screen/home/home.dart';

class Routes {
  static String splashScreen = '/';
  static String loginScreen = '/login';
  static String homeScreen = '/home';

  static GoRouter generateRouter() {
    return GoRouter(
      initialLocation: splashScreen,
      routes: [
        GoRoute(
          path: splashScreen,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: loginScreen,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
  }
}
