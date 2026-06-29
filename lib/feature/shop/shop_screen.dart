import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_assets.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/core/widgets/product_item.dart';
import 'package:sportsapp/feature/home/home.dart';
import 'package:sportsapp/feature/profile/profile_screen.dart';
import 'package:sportsapp/feature/settings/setting_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,

        title: const Text(
          "All Products",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),

        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),

            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [
          ProductItem(
            image: AppAssets.ball,
            title: "Pro Soccer Ball",
            subtitle: "FIFA approved match ball",
            price: "\$29.99",
          ),

          const SizedBox(height: 15),

          const ProductItem(
            image: AppAssets.shoes,
            title: "Runner X1",
            subtitle: "Lightweight running shoes",
            price: "\$89.99",
          ),

          const SizedBox(height: 15),

          const ProductItem(
            image: AppAssets.tshirt,
            title: "Classic Jersey",
            subtitle: "Breathable fabric",
            price: "\$45.00",
          ),

          const SizedBox(height: 15),

          const ProductItem(
            image: AppAssets.gym_bag,
            title: "Gym Duffle Bag",
            subtitle: "Water-resistant with shoe compartment",
            price: "\$35.50",
          ),

          const SizedBox(height: 15),

          const ProductItem(
            image: AppAssets.tennis,
            title: "Pro Tennis Racket",
            subtitle: "Carbon fiber frame",
            price: "\$120.00",
          ),

           const SizedBox(height: 15),
          ProductItem(
            image: AppAssets.yoga,
            title: "Yoga Mat",
            subtitle: "Non-slip eco friendly",
            price: "\$22.00",
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
     currentIndex: 0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    showSelectedLabels: true,
    showUnselectedLabels: true,

    onTap: (index) {
      if (index == 0) {
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      }

      if (index == 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShopScreen(),
          ),
        );
      }

      if (index == 2) {
       Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        );
      }

      if (index == 3) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsScreen(),
          ),
        );
      }
    },

    items:const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag_outlined),
      activeIcon: Icon(Icons.shopping_bag),
      label: "Shop",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: "Profile",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      activeIcon: Icon(Icons.settings),
      label: "Settings",
    ),
  ],
  ),
    );
  }
}