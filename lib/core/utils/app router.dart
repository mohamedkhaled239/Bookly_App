import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_views.dart';
import 'package:go_router/go_router.dart';
abstract class  AppRouter {
static const kHomeVeiw = '/homeView';

static final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
   GoRoute(
    path: kHomeVeiw,
    builder: (context, state) => HomeView(),
  ),
]);
}