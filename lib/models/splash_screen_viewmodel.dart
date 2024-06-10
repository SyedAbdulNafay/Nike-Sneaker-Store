import 'package:sneaker_store/app/app.locator.dart';
import 'package:sneaker_store/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel{
  final navigationService = locator<NavigationService>();

  navigateToHome(){
    navigationService.navigateToHomeView();
  }
}