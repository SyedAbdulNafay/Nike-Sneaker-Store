import 'package:flutter/material.dart';
import 'package:sneaker_store/models/cart_viewmodel.dart';
import 'package:sneaker_store/utils/widgets/carttile.dart';
import 'package:stacked/stacked.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CartViewModel(),
        builder: (context, ViewModel, child) {
          return Scaffold(
              backgroundColor: Colors.grey[300],
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Column(
                  children: [
                    const Text(
                      "My Cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                        child: ListView.builder(
                            itemCount: ViewModel.shoeService.userCart.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top:16.0),
                                child: Carttile(
                                  shoe: ViewModel.shoeService.userCart[index],
                                  onPressed: ViewModel.removeFromCart,
                                ),
                              );
                            }))
                  ],
                ),
              ));
        });
  }
}
