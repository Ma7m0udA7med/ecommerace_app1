import 'package:ecommerace_app1/Wedigets/categorychip.dart';
import 'package:ecommerace_app1/Wedigets/offercard.dart';
import 'package:ecommerace_app1/Wedigets/productcard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi, Mahmoud',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Welcome 👋', style: TextStyle(color: Color(0xFF4A80F0))),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                  icon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.tune),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "New Offers",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("See All", style: TextStyle(color: Color(0xFF4A80F0))),
              ],
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  offerCard("Friday Sale\nUP TO 30% OFF", Colors.blue),
                  const SizedBox(width: 10),
                  offerCard("New MacBook Pro M1 2025", Colors.redAccent),
                ],
              ),
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "New Fashion",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("See All", style: TextStyle(color: Color(0xFF4A80F0))),
              ],
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryChip("All", true),
                  categoryChip("T-Shirt", false),
                  categoryChip("Crop Tops", false),
                  categoryChip("Blazers", false),
                ],
              ),
            ),
            const SizedBox(height: 20),

            GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return productCard(index);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF4A80F0),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: "Trending",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
