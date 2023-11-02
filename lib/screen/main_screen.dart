import 'package:flutter/material.dart';
import 'package:food_app/pages/main_page_screen.dart';
import 'package:food_app/widgets/catagories.dart';
import 'package:food_app/widgets/products.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainPageScreen(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Food Catagory",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Row(
                    children: [
                      const Text(
                        "See more",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.east_sharp,
                            color: Colors.blueGrey,
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Catagories(
                      text: "Burger", image: "assets/images/burger.jpeg"),
                  Catagories(text: "Ramen", image: "assets/images/ramen.jpeg"),
                  Catagories(text: "Salad", image: "assets/images/salad.jpeg"),
                  Catagories(text: "Cake", image: "assets/images/cake.jpeg")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Food for you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Row(
                    children: [
                      const Text(
                        "All",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Products(
                    image: 'assets/images/steak.jpeg',
                    text: 'Steak',
                    price: 100,
                    min: '30-40 min',
                    km: '7',
                  ),
                  Products(
                    image: 'assets/images/pasta.jpeg',
                    text: 'Italian Pasta',
                    price: 90,
                    min: '20-30 min',
                    km: '8',
                  ),
                  Products(
                    image: 'assets/images/pizza.jpeg',
                    text: 'Pizza',
                    price: 120,
                    min: '30-60 min',
                    km: '9',
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {},
        child: const Icon(
          Icons.card_travel_rounded,
          color: Colors.white,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          onTap: (int index) {
            setState(() {
              current_index = index;
            });
          },
          selectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
            ),
          ]),
    );
  }
}
