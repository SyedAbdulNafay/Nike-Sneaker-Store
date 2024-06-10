import 'package:sneaker_store/pages/home_view.dart';
import 'package:sneaker_store/pages/splash_screen_view.dart';
import 'package:sneaker_store/services/shoe_services.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashScreenView, initial: true),
  MaterialRoute(page: HomeView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: ShoeService)
])
class App {}
