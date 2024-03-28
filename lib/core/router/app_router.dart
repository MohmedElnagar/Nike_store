import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/views/bag/bage_view.dart';
import 'package:ecommerse/features/views/deteils_view.dart';
import 'package:ecommerse/features/views/home_view.dart';
import 'package:ecommerse/features/views/main_navigatoin_bar.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview = "/homeview";
  static const kMain = "/";
  static const kDetailsView = "/detailsview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMain,
        builder: (context, state) => const MainNavigationBar(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => DetailsView(
          model: state.extra as ShoeModel,
          isCome: true,
        ),
      ),
    ],
  );
}
