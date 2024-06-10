import 'package:flutter/material.dart';
import 'package:sneaker_store/models/shop_viewmodel.dart';
import 'package:sneaker_store/utils/widgets/shoecard.dart';
import 'package:stacked/stacked.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ShopViewModel(),
        builder: (context, ViewModel, child) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey[300],
              body: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      "Everyone flies...some fly longer than others",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Hot Picks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 450,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ViewModel.shoeService.shoes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: ShoeCard(
                                shoe: ViewModel.shoeService.shoes[index],
                                onTap: ViewModel.shoeService.addToCart,
                              ),
                            );
                          }))
                ],
              ),
            ),
          );
        });
  }
}
