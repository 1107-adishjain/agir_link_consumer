import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerForExplore extends StatefulWidget {
  ContainerForExplore({super.key, required this.label, required this.colour});
  late String label;
  late Color colour;
  @override
  State<ContainerForExplore> createState() => _ContainerForExploreState();
}

class _ContainerForExploreState extends State<ContainerForExplore> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 200.0,
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: widget.colour,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.black26, width: 0.4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/ic_launcher1.png",
                height: 80.0,
                width: 90.0,
              ),
              const Spacer(),
              Text(
                widget.label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
