import 'package:flutter/material.dart';

class FeaturedRecipes extends StatelessWidget {
  final String text;

  const FeaturedRecipes({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/icons/maindish.png')),
                )),
            const SizedBox(
              height: 10,
            ),
            Text(text)
          ],
        ));
  }
}
