import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onMenuTap;

  const TopBar({super.key, required this.onMenuTap});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A).withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Color(0xFFAA8D52),
              ),
              children: [
                TextSpan(text: "E", style: TextStyle(fontSize: 34)),
                TextSpan(text: "co"),
                TextSpan(text: "B", style: TextStyle(fontSize: 34)),
                TextSpan(text: "ridge"),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.menu, size: 28, color: Color(0xFFAA8D52)),
            onPressed: onMenuTap,
          ),
        ],
      ),
    );
  }
}
