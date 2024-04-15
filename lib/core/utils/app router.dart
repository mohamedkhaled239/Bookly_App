import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_views.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/book_details_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeVeiw = '/homeView';
  static const kBookDetailsVeiw = '/bookDetailsView';
  static const ksearchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: ksearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeVeiw,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsVeiw,
      builder: (context, state) => const BookdetailsView(),
    ),
  ]);
}
