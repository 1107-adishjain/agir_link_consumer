import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  static String idd = "cart";

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  // Initial items and quantities
  List<Map<String, dynamic>> items = List.generate(
    8,
    (index) => {
      'id': index,
      'name': 'Food Item $index',
      'price': '\$${5.99}', // Just the price text
      'quantity': 0,
    },
  );

  void _incrementQuantity(int index) {
    setState(() {
      items[index]['quantity']++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (items[index]['quantity'] > 0) {
        items[index]['quantity']--;
        if (items[index]['quantity'] == 0) {
          items.removeAt(index);
        }
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Column(
                  children: [
                    const Divider(),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 130, // Increased height of each section
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/ic_launcher1.png', // Replace with your image asset
                              width: 80,
                              height: 80,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item['name'], style: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                                const SizedBox(height: 4),
                                const Text('1kg Price', style: TextStyle(fontSize: 14)),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.white,
                                      onPressed: () => _incrementQuantity(index),
                                      child: Icon(Icons.add,color: Colors.green,),
                                      mini: true,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '${item['quantity']}',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    const SizedBox(width: 10),
                                    FloatingActionButton(
                                      backgroundColor: Colors.white,
                                      onPressed: () => _decrementQuantity(index),
                                      child: Icon(Icons.remove,color: Colors.grey,),
                                      mini: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => _removeItem(index),
                                child: const Align(
                                  alignment: Alignment.topRight,
                                  
                                  child: Icon(
                                    
                                    Icons.cancel_outlined,
                                    color: Colors.grey,
                                    size: 28.0,
                                    // weight: 10.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 24),
                              Text(
                                item['price'], // Displaying actual price value
                                style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to checkout page
            },
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: const Center(
                  child: Text(
                    'Go to Checkout',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
