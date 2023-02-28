import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presention/maneger/similer_books/similer_books_cubit.dart';
import 'package:bookly_app/Features/home/presention/view/book_details_view.dart';
import 'package:bookly_app/Features/home/presention/view/home_view.dart';
import 'package:bookly_app/Features/search/presention/view/search_view.dart';
import 'package:bookly_app/core/utils/servies_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilerBooksCubit(getIt.get<HomeRepoImelement>()),
          child: BookDetailsView(
            book: state.extra as BookModels,
          ),
        ),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
