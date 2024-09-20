import 'package:auto_route/auto_route.dart';
import 'package:flutter_test_app/app/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';


@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: HomeRoute.page,initial: true),
  AutoRoute(page: DetailRoute.page),
 ];
}