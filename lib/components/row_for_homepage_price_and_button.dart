import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RowForHomepagePriceAndButton extends StatefulWidget {
  RowForHomepagePriceAndButton({super.key,required this.label});
  late String label;

  @override
  State<RowForHomepagePriceAndButton> createState() =>
      _RowForHomepagePriceAndButtonState();
}

class _RowForHomepagePriceAndButtonState
    extends State<RowForHomepagePriceAndButton> {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigate to Groceries page
          },
          child: const Text(
            "See all",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
