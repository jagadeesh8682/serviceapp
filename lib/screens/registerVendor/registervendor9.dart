import 'package:flutter/material.dart';
import 'package:myapp/screens/registerVendor/registervendor10.dart';

class Registervendor9Screen extends StatelessWidget {
  const Registervendor9Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Color.fromRGBO(78, 185, 231, 1),
        child: Scaffold(
          backgroundColor: Color.fromRGBO(78, 185, 231, 1),
          body: Stack(
            children: [ 
             
                s(context),
                
                
                 
              //   ],
              // ),
            ],
            )));
      }
 
Widget s(context) {
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
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registervendor10Screen()),
                          );
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
                    left: 70.0,bottom:50
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
                const Row(
  children: [
    SizedBox(width: 8), // Adjust space between icon and text
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Align(
            alignment: Alignment.center,
            child: Text(
          
            'คุณต้องการซื้อประกัน',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 23,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              height: 1.91,
            ),
          )),
          SizedBox(height: 8), // Adjust space between the two rows of text
          Center(
            child: Text(
              'หรือไม่ ?',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 23,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                height: 1.91,
              ),
            ),
          ),
        ],
      ),
    ),
  ],
),
                
               yesButton(),
               noButton(),
               customButton(
  label: 'กลับไปก่อนหน้า',
  onPressed: () {
    // Add your onPressed logic here
  },
),
               
                _buildBottomTabBar(),
              ],
            ),
          ],
        ));
  }
Widget yesButton() {
  return GestureDetector(
    onTap: () {
      // Add your functionality for YES button here
    },
    child: Container(
      margin: const EdgeInsets.only(top: 50, left: 21,right:21),
      width: 100,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: const Color(0xFF526b8c),
      ),
      child: Center(
        child: Text(
          'YES',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
        ),
      ),
    ),
  );
}
Widget noButton() {
  return GestureDetector(
    onTap: () {
      // Add your functionality for NO button here
    },
    child: Container(
      margin: const EdgeInsets.only(top: 20, left: 21,right:21,bottom:100),
      width: 100,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: const Color(0xFFb2c0db), width: 1),
        color: const Color(0xFFFFFFFF),
      ),
      child: Center(
        child: Text(
          'NO',
          style: TextStyle(
            color: const Color(0xFF24aef6),
            fontSize: 20,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
        ),
      ),
    ),
  );
}
Widget customButton({
  required String label,
  required VoidCallback onPressed,
}) {
  return Container(
    margin: EdgeInsets.only(top: 80, left: 120,right:120),
    width: 133,
    height: 42,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(3, 3, 3, 0.1),
          blurRadius: 10,
          offset: Offset(0, 0),
        ),
      ],
      color: Color(0xFFC8EDFD),
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Color(0xFF000000),
          fontSize: 14,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: 1.14,
        ),
      ),
    ),
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
