import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sneaker_store/models/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, ViewModel, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Builder(builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),
            ),
            drawer: Drawer(
              backgroundColor: Colors.grey[900],
              child: Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    "lib/images/nike_swoosh_logo.png",
                    color: Colors.white,
                  )),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.info,
                                color: Colors.white,
                              ),
                              title: Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Log Out",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: GNav(
                color: Colors.grey,
                activeColor: Colors.grey[700],
                tabActiveBorder: Border.all(color: Colors.white),
                tabBackgroundColor: Colors.grey.shade100,
                mainAxisAlignment: MainAxisAlignment.center,
                tabBorderRadius: 16,
                onTabChange: (value) => ViewModel.navigateBottomBar(value),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: "Shop",
                  ),
                  GButton(
                    icon: Icons.shopping_bag_rounded,
                    text: "Cart",
                  )
                ],
              ),
            ),
            backgroundColor: Colors.grey[300],
            body: ViewModel.pages[ViewModel.selectedIndex],
          );
        });
  }
}
