import 'package:flutter/material.dart';


class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFFFFFF),
        child: Scaffold(
            body: Stack(
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
                            // Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => const Animal1Screen()),
                            //       );
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
                            border: Border.all(color: const Color(0xFF5AC8FA)),
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
                            color: const Color(0xFF5AC8FA),
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
                      color: Color(0xFF5AC8FA),
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.32, // Adjust as needed
                    ),
                  ),
                ),
                centeredTextRow() ,
                downloadButton(),
                downloadButton1(),
                downloadButton2(),
                // customImage(),
                const SizedBox(height: 10),
                 _buildBottomTabBar(),
              ],
            ),
          ],
        )));
  }

 Widget centeredTextRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'เรียนร้อยค่ะ',
              style: TextStyle(
                color: Color(0xFF24aef6),
                fontSize: 26,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ขอบคุณที่ใช้บริการ',
              style: TextStyle(
                color: Color(0xFF24aef6),
                fontSize: 26,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
Widget downloadButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: () {
          // Add the functionality for the button here
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 18,vertical:20),
          backgroundColor: const Color(0xFFc8edfd),
          minimumSize: Size(283, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xFFc8edfd)), // Same as backgroundColor for no border
          ),
        ),
        child: Text(
          '  ดาวน์โหลดใบเสร็จ ',
          style: TextStyle(
            color: const Color(0xFF000000),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
            height: 1.27,
          ),
        ),
      ),
    ],
  );
}
Widget downloadButton1() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30), // Adding vertical padding
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            // Add the functionality for the button here
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20), // Adjusted padding
            backgroundColor: const Color(0xFF5AC8FA),
            minimumSize: Size(283, 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xFFc8edfd)), // Same as backgroundColor for no border
            ),
          ),
          child: Text(
            ' เลือกบริการอื่นๆ ',
            style: TextStyle(
              color: const Color(0xFF000000),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
              height: 1.27,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget downloadButton2() {
  return Padding(
    padding: EdgeInsets.only(bottom: 100), // Adding vertical padding
    child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: () {
          // Add the functionality for the button here
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 18,vertical:20),
          backgroundColor: const Color(0xFF526B8C),
          minimumSize: Size(283, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xFFc8edfd)), // Same as backgroundColor for no border
          ),
        ),
        child: Text(
          '  กลับหน้าหลัก ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
            height: 1.27,
          ),
        ),
      ),
    ],
  ));
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
