import 'package:consumer/bottom_naivgationbar_pages/Account.dart';
import 'package:consumer/bottom_naivgationbar_pages/Cart.dart';
import 'package:consumer/bottom_naivgationbar_pages/Explore.dart';
import 'package:consumer/bottom_naivgationbar_pages/Favourite.dart';
import 'package:consumer/components/food_containers.dart';
import 'package:consumer/components/list_view_groceries.dart';
import 'package:consumer/components/row_for_homepage_price_and_button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  static String id = "home";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0; // Index for Bottom Navigation Bar

  // List of pages to be displayed
  final List<Widget> _pages = [
    const HomePageContent(),
    const Explore(),
    const Cart(),
    const Favourite(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _selectedIndex == 0
          ? AppBar(
              backgroundColor: Colors.white,
              title: Image.asset(
                "assets/images/Logo.jpg",
                height: 100.0,
              ),
              centerTitle: true,
            )
          : null,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          ),    
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_rounded),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

// Extracted the homepage content into a separate widget
class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search store',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 20.0),

            // Horizontal List of Images
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      "assets/images/Design 2.png",
                      width: 360.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            // Exclusive Offers
            RowForHomepagePriceAndButton(
              label: "Exclusive",
            ),
            // Offer Containers
            const Row(
              children: [
                Expanded(
                  child: FoodContainers(),
                ),
                Expanded(
                  child: FoodContainers(),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            // Best Selling
            RowForHomepagePriceAndButton(
              label: "Best Selling",
            ),
            // Best Selling Containers
            const Row(
              children: [
                Expanded(
                  child: FoodContainers(),
                ),
                Expanded(
                  child: FoodContainers(),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            // Groceries
            RowForHomepagePriceAndButton(
              label: "Groceries",
            ),
            // Horizontal List for Groceries
            const ListViewGroceries(),
            const SizedBox(height: 20.0),
            // Additional Containers at the Bottom
            const Row(
              children: [
                Expanded(
                  child: FoodContainers(),
                ),
                Expanded(
                  child: FoodContainers(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
