import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavItem(Icons.home, 'หน้าหลัก', 0),
          buildNavItem('images/phone.svg', 'ติดต่อ', 1, isSvg: true),
          buildNavItem('images/square.svg', 'ฉุกเฉิน', 2, isSvg: true),
          buildNavItem('images/comment.svg', 'chat', 3, isSvg: true),
          buildNavItem(Icons.person, 'profile', 4),
        ],
      ),
    );
  }

  Widget buildNavItem(dynamic icon, String label, int index,
      {bool isSvg = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width / 5,
        decoration: const BoxDecoration(
          color: Color(0xFFC8EDFD),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon is IconData)
              Icon(
                icon,
                color: Colors.black,
              )
            else if (isSvg && icon is String)
              SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
               
              ),
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
