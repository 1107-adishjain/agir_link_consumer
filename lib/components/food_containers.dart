import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodContainers extends StatefulWidget {
  const FoodContainers({super.key});

  @override
  State<FoodContainers> createState() => _FoodContainersState();
}

class _FoodContainersState extends State<FoodContainers> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to Food Item 3 Details Page
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          // color: Colors.grey[,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Colors.black26,
            width: 0.4
          ),
        ),
        height: 220.0,
        
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Banana Icon at the top center
            Image.asset("assets/images/ic_launcher1.png",
            height: 60.0,
            width: 90.0,),
            const SizedBox(height: 10.0),
            // Organic Bananas Text
           const Column(
            children: [
               Text(
              "Capsicum",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 6.0),
            // Description
            Text(
              "7pcs, Price",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.start,
            ),
            ],
           ),
            const SizedBox(height: 16.0), // Space before the row

            // Row with Floating Action Button
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text("4.99",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),),
                    SizedBox(width: 6.0,),
                    FaIcon(
                      FontAwesomeIcons.rupeeSign,
                      size: 16.0,
                    )
                  ],
                ),
                // Floating Action Button
                FloatingActionButton(
                  onPressed: () {
                    // Add functionality
                  },
                  backgroundColor: Colors.green,
                  mini: true,
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
