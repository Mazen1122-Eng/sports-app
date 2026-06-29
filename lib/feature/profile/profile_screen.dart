import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/core/widgets/profile_card.dart';
import 'package:sportsapp/core/widgets/profile_tile.dart';
import 'package:sportsapp/feature/home/home.dart';
import 'package:sportsapp/feature/settings/setting_screen.dart';
import 'package:sportsapp/feature/shop/shop_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 20),

            // صورة البروفايل
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.backgroundColor,
              child: const Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            // الاسم
            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            // الايميل
            Text(
              "john.doe@flutter.dev",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 20),

            // زر Edit Profile
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Edit Profile"),
            ),

            const SizedBox(height: 30),

            // الإحصائيات
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [

                  Expanded(
                    child: ProfileCard(
                      icon: Icons.inventory_2_outlined,
                      number: "12",
                      title: "ORDERS",
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: ProfileCard(
                      icon: Icons.favorite_border,
                      number: "5",
                      title: "WISHLIST",
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: ProfileCard(
                      icon: Icons.star_border,
                      number: "3",
                      title: "REVIEWS",
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // القائمة
            const ProfileTile(
              icon: Icons.inventory_2_outlined,
              title: "My Orders",
            ),

            const ProfileTile(
              icon: Icons.favorite_border,
              title: "Favorites",
            ),

            const ProfileTile(
              icon: Icons.credit_card,
              title: "Payment Methods",
            ),

            const ProfileTile(
              icon: Icons.help_outline,
              title: "Help Center",
            ),

            const SizedBox(height: 20),

            // زر Logout
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),

              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),

                title: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                ),

                onTap: () {},
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
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
  ),);
  }
}