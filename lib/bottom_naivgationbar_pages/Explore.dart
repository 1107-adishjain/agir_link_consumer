import 'package:consumer/components/container_for_explore.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});
  static String idd = "explore";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Find Products",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
              Row(
                children: [
                  Expanded(
                      child: ContainerForExplore(
                    label: "Fresh Fruits & Vegetables",
                    // ignore: use_full_hex_values_for_flutter_colors
                    colour: const Color.fromARGB(82, 209, 231, 216),
                  )),
                  Expanded(
                      child: ContainerForExplore(
                    label: "Cooking oil & Ghee",
                    // ignore: use_full_hex_values_for_flutter_colors
                    colour: const Color.fromARGB(82, 235, 220, 204),
                  ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ContainerForExplore(
                    label: "Meat & Fish",
                    colour: Color(0x255FDE8E4),
                  )),
                  Expanded(
                      child: ContainerForExplore(
                    label: "Bakery & Snacks",
                    colour: Color(0x255F4EBF7),
                  ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ContainerForExplore(
                    label: "Dairy & Eggs",
                    colour: Color(0x255FFF8E5),
                  )),
                  Expanded(
                      child: ContainerForExplore(
                    label: "Beverages",
                    colour: Color(0x255EDF7FC),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
