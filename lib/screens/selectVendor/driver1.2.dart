import 'package:flutter/material.dart';

class Driver1sScreen extends StatelessWidget {
  const Driver1sScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Color.fromRGBO(78, 185, 231, 1),
        child: Scaffold(
          backgroundColor: Color.fromRGBO(78, 185, 231, 1),
          body: Stack(
            children: [ 
           
                s(),

                
                 
              //   ],
              // ),
            ],
            )));
      }
      Widget s() {
    return Container(
        color: Color.fromRGBO(78, 185, 231, 1),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 14.0, right: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // "สมัคร" Button
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            color: Color(0xFFFFFFFF),
                          ),
                          child: const Text(
                            ' สมัคร ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.15,
                              height: 1.14,
                            ),
                          ),
                        ),
                      ),
                      Container(width: 16),

                      // "Log in" Button
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: const Color(0xFF526B8C),
                          ),
                          child: const Text(
                            ' Log in ',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 37,
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 70.0,
                  ),
                  child: Text(
                    'All in One',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.32, // Adjust as needed
                    ),
                  ),
                ),
                
                
                  myButton(),
                  twoImagesRow(),
                 twoButtons(
  label1: 'นักกีฬา',
  onPressed1: () {
    // Add functionality for the first button
  },
  label2: 'ฟิตเนส',
  onPressed2: () {
    // Add functionality for the second button
  },
),
Padding(
    padding: EdgeInsets.only(top: 130.0, left: 100.0,right:100,), // Adjust top and left positioning
    child: ElevatedButton(
      onPressed: () {
        // Add your button press logic here
      },
      style: ElevatedButton.styleFrom(
        // padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal padding
        // fixedSize: Size(133.0, 42.0), // Set width and height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Set border radius
        ),
        elevation: 5, // Shadow depth
        primary: Color(0xFF526b8c), // Background color
      ),
      child: const Text(
        'กลับหน้าหลัก',
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: 14.0,
          fontFamily: 'Roboto',
          height: 1.2,
        ),
      ),
    ),
  ),
               
                _buildBottomTabBar(),
              ],
            ),
          ],
        ));
  }
 Widget myButton() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' กรุณาเลือกประเภท ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
        ),
      ],
    ),
  );
}
Widget twoImagesRow() {
  return Padding(
    padding: EdgeInsets.only(top:20,left:20,right:20,bottom:40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 137,
          height: 171,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage('images/d1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 137,
          height: 171,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage('images/d2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
 Widget twoButtons({
  required String label1,
  required String label2,
  required VoidCallback onPressed1,
  required VoidCallback onPressed2,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: onPressed1,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF526B8C),
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: SizedBox(
          width: 109,
          height: 32,
          child: Center(
            child: Text(
              label1,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                height: 1.29,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 10),
      ElevatedButton(
        onPressed: onPressed2,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF526B8C),
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: SizedBox(
          width: 109,
          height: 32,
          child: Center(
            child: Text(
              label2,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                height: 1.29,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

       Widget _buildBottomTabBar() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.only(
        top: 10,
      ),
      width: 375,
      height: 70, // Adjusted height to accommodate text below icons
      decoration: BoxDecoration(
        color: const Color(0xFFC8EDFD),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 10,
            color: Color.fromRGBO(3, 3, 3, 0.1),
          ),
        ],
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTabBarItem(Icons.home, size: 28),
              _buildPhoneWithChatBubble(),
              _buildPlusIconWithCircle(),
              _buildChatIcon(),
              _buildTabBarItem(Icons.person, size: 28),
              // Add more icons for other tabs as needed
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('หน้าหลัก'), // Text for home icon
              Text('ติดต่อ'), // Text for phone icon
              Padding(
                padding:
                    EdgeInsets.only(left: 4), // Adjust the left padding here
                child: Text('ฉุกเฉิน'),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 10), // Adjust the left padding here
                child: Text('Chat'),
              ), // Text for chat icon
              Text('Profile'), // Text for profile icon
              // Add text for other icons
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneWithChatBubble() {
    return const Stack(
      children: [
        Icon(Icons.phone, size: 28, color: Color(0xFF030303)),
        Positioned(
          top: 3, // Adjust this value for the desired vertical position
          left: 12,
          child:
              Icon(Icons.messenger_rounded, size: 13, color: Color(0xFF030303)),
        ),
      ],
    );
  }

  Widget _buildPlusIconWithCircle() {
    return Container(
        width: 25,
        height: 22,
        decoration: BoxDecoration(
          color: const Color(0xFF030303),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        ));
  }

  Widget _buildChatIcon() {
    return Container(
      width: 27,
      height: 22,
      decoration: BoxDecoration(
        color: const Color(0xFF030303),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Icon(
          Icons.more_horiz,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
   Widget _buildTabBarItem(IconData iconData, {double size = 24}) {
    return Icon(iconData, size: size, color: const Color(0xFF030303));
  }

}
