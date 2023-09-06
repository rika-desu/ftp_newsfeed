import 'package:flutter/material.dart';
import 'package:ftp_newsfeed/featured_recipes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFBF1EF),
        appBar: AppBar(
            backgroundColor: const Color(0xFFFBF1EF),
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  height: 55,
                ),
                const Icon(
                  Icons.search,
                  color: Color(0xFF3D0C02),
                  size: 30,
                ),
              ],
            )),
        body: Column(children: [
          // featured recipes
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                FeaturedRecipes(
                  text: 'Main Dishes',
                ),
                FeaturedRecipes(
                  text: 'Breakfast',
                ),
                FeaturedRecipes(
                  text: 'Snacks',
                ),
                FeaturedRecipes(
                  text: 'Desserts',
                ),
                FeaturedRecipes(
                  text: 'Drinks',
                ),
              ],
            ),
          )
        ]));
  }
}
