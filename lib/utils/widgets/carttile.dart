import 'package:flutter/material.dart';
import 'package:sneaker_store/models/shoe.dart';

class Carttile extends StatelessWidget {
  final Shoe shoe;
  void Function(String) onPressed;
  Carttile({super.key, required this.shoe, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      height: 100,
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 80, child: Image.asset(shoe.imagePath, fit: BoxFit.cover,)),
              const SizedBox(
                width: 10,
              ),
              //name and price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoe.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "\$${shoe.price}",
                    style: TextStyle(color: Colors.grey[600], fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          //image
          //delete buttonn
          IconButton(
              onPressed: () => onPressed(shoe.name), icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
