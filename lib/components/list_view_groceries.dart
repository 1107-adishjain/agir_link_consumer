import 'package:flutter/material.dart';

class ListViewGroceries extends StatefulWidget {
  const ListViewGroceries({super.key});

  @override
  State<ListViewGroceries> createState() => _ListViewGroceriesState();
}

class _ListViewGroceriesState extends State<ListViewGroceries> {
  final List<String> names = ["Pulses", "Rice", "Wheat", "Maze", "Seeds"];
  final List<String> images = [
    "assets/images/ic_launcher6.png",
    "assets/images/ic_launcher2.png",
    "assets/images/ic_launcher3.png",
    "assets/images/ic_launcher4.png",
    "assets/images/ic_launcher5.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to Grocery Item Details Page
            },
            child: Container(
              width: 240.0,
              // height: 10.0,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(82, 236, 202, 168),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.black26, width: 0.3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    images[index],
                    height: 70.0,
                    width: 70.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 6.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      names[index],
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
