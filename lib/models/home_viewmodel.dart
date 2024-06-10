import 'package:sneaker_store/pages/cart_view.dart';
import 'package:sneaker_store/pages/shop_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  int selectedIndex = 0;
  List pages = [const ShopView(), const CartView()];

  navigateBottomBar(int index){
    selectedIndex = index;
    rebuildUi();
  }
}