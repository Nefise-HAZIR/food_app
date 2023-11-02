import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String image;
  final String text;
  final int price;
  final String min;
  final String km;
  const Products({super.key, required this.image, required this.text, required this.price, required this.min, required this.km});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 285,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            const BoxShadow(
                color: Colors.grey, blurRadius: 10, offset: Offset(1, 0.5))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                width: 200,
                height: 130,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.watch_later_outlined),
                    Text(min),
                    Text(km)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$$price",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.blueGrey,
                    shape: const CircleBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
