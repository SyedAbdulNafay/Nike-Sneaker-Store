import 'package:sneaker_store/app/app.locator.dart';
import 'package:sneaker_store/services/shoe_services.dart';
import 'package:stacked/stacked.dart';

class CartViewModel extends BaseViewModel{
  final shoeService = locator<ShoeService>();

  void removeFromCart(String shoeName){
    shoeService.removeFromCart(shoeName);
    rebuildUi();
  }
}