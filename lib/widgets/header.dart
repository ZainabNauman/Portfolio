import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: mediaQuery.size.height * 0.02,
          horizontal: mediaQuery.size.width * 0.05),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  // Navigate to about section
                },
              ),
              IconButton(
                icon: const Icon(Icons.email, color: Colors.white),
                onPressed: () {
                  // Open contact form or email
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
