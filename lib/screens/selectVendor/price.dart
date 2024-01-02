import 'package:flutter/material.dart';

class PriceScreen extends StatelessWidget {
  const PriceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: const Color(0xFFFFFFFF),
                // return Container(
                //     color: const Color(0xFFFFFFFF),
                //     child: Scaffold(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25.0, left: 14.0, right: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // "สมัคร" Button
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => const Registervendor4Screen()),
                                  // );
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
                                    border: Border.all(
                                        color: const Color(0xFF5AC8FA)),
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
                              SizedBox(height: 10),
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

                        profile(),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SizedBox(
                            height:
                                70, // Set a fixed height for the bottom tab bar
                            child: _buildBottomTabBar(),
                          ),
                        ),
                        // profile(),
                        // _buildBottomTabBar(),
                      ],
                    ),
                  ],
                ))));
  }

  Widget profile() {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Form(
        // Your form content here
        child: Column(
          children: [
            firstrow(),
                    const SizedBox(height: 10),
                    secondrow(),
                    const SizedBox(height: 10),
                    checkbox(),
                     const SizedBox(height: 10),
                    textRowWidget(),
                    const SizedBox(height: 10),
                    secondrow(),
                    const SizedBox(height: 10),
                     firstrow1(),
                     checkbox1(),
            //          const Padding(
            //                 padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
            //                 child: Align(
            // alignment: Alignment.centerLeft,
            //                 child: Text(
            //                   'ประสบการณ์การทำงาน',
            //                   style: TextStyle(
            //                       color: Color(0xFF030303),
            //                       fontSize: 15,
            //                       fontFamily: 'Roboto',
            //                       fontWeight: FontWeight.w500,
            //                       height: 1.0),
            //                 ))),
            //                 textField1(),
            //                 const Padding(
            //                 padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
            //                 child: Align(
            // alignment: Alignment.centerLeft,
            //                 child: Text(
            //                   'ความสามารถพิเศษ',
            //                   style: TextStyle(
            //                       color: Color(0xFF030303),
            //                       fontSize: 15,
            //                       fontFamily: 'Roboto',
            //                       fontWeight: FontWeight.w500,
            //                       height: 1.0),
            //                 ))),
            //                 textField2(),

            //           const SizedBox(height: 20), // Adjust spacing before the buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          backgroundColor: const Color(0xFF24AEF6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'กลับไปก่อนหน้า',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            height: 1.16,
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          backgroundColor: const Color(0xFF526B8C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          ' ดำเนินการต่อ ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            height: 1.16,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget firstrow() {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20), // Adjust left padding as needed
          child: Icon(
            Icons.attach_money, // Dollar icon
            size: 24, // Icon size
            color: Colors.black, // Icon color
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 10), // Adjust padding between icon and text
          child: Text(
            'ค่าบริการ/ค่าจ้าง', // Your text
            style: TextStyle(
              color: Color(0xFF526b8c),
              fontSize: 18,
              fontFamily: 'Roboto',
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
  Widget firstrow1() {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20),
        child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(3),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(3, 3, 3, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromRGBO(78, 185, 231, 1),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(78, 185, 231, 1),
                  size: 14,
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(
              left: 10), // Adjust padding between icon and text
          child: Text(
            'ต้องมียานพาหนะ', // Your text
            style: TextStyle(
              color: Color(0xFF526b8c),
              fontSize: 18,
              fontFamily: 'Roboto',
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
Widget secondrow() {
  return Padding(
    padding: EdgeInsets.only(left: 40.0,top:10), // Adjust the left padding as needed
    child: Row(
      children: [
        SizedBox(
          width: 200,
          height: 20,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'จำนวนเงิน',
              contentPadding: EdgeInsets.symmetric(horizontal: 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: TextStyle(
              color: Color(0xFF030303),
              fontSize: 12,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        SizedBox(width: 20), // Adjust the spacing between widgets
        Text(
          'บาท',
          style: TextStyle(
            color: Color(0xFF526b8c),
            fontSize: 12,
            fontFamily: 'Roboto',
          ),
        ),
      ],
    ),
  );
}
 Widget checkbox() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 45),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(3),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(3, 3, 3, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromRGBO(78, 185, 231, 1),
                  width: 1,
                ),
              ),
              // child: const Center(
              //   child: Icon(
              //     Icons.check,
              //     color: Color.fromRGBO(78, 185, 231, 1),
              //     size: 14,
              //   ),
              // ),
            ),
            const SizedBox(width: 8), // Adjust space between checkbox and text
            const Text(
              ' รวมอาหาร ',
              style: TextStyle(
                color: Color.fromRGBO(78, 185, 231, 1),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(3),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(3, 3, 3, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromRGBO(78, 185, 231, 1),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(78, 185, 231, 1),
                  size: 14,
                ),
              ),
            ),
            const SizedBox(width: 8), // Adjust space between checkbox and text
            const Text(
              ' ไม่รวมอาหาร ',
              style: TextStyle(
                color: Color.fromRGBO(78, 185, 231, 1),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
Widget checkbox1() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 45),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(3),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(3, 3, 3, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromRGBO(78, 185, 231, 1),
                  width: 1,
                ),
              ),
              // child: const Center(
              //   child: Icon(
              //     Icons.check,
              //     color: Color.fromRGBO(78, 185, 231, 1),
              //     size: 14,
              //   ),
              // ),
            ),
            const SizedBox(width: 8), // Adjust space between checkbox and text
            const Text(
              'รถจักรยานยนต์ ',
              style: TextStyle(
                color: Color.fromRGBO(78, 185, 231, 1),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(3),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(3, 3, 3, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromRGBO(78, 185, 231, 1),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(78, 185, 231, 1),
                  size: 14,
                ),
              ),
            ),
            const SizedBox(width: 8), // Adjust space between checkbox and text
            const Text(
              ' รถยนต์ ',
              style: TextStyle(
                color: Color.fromRGBO(78, 185, 231, 1),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
         const SizedBox(height: 20),
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(3),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(3, 3, 3, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromRGBO(78, 185, 231, 1),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(78, 185, 231, 1),
                  size: 14,
                ),
              ),
            ),
            const SizedBox(width: 8), // Adjust space between checkbox and text
            const Text(
              ' รถกระบะ ',
              style: TextStyle(
                color: Color.fromRGBO(78, 185, 231, 1),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
Widget textRowWidget() {
  return Padding(
    padding: EdgeInsets.only(left: 40.0), // Adjust the left padding as needed
    child: Row(
      children: [
        Text(
          'ค่าเดินทาง/ค่าน้ำมัน',
          style: TextStyle(
            color: Color(0xFF526B8C),
            fontSize: 18,
            fontFamily: 'Roboto',
            height: 1.3, // Adjust the line height if needed
          ),
        ),
      ],
    ),
  );
}
  Widget _buildBottomTabBar() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(
        top: 15,
      ),
      width: 375,
      height: 50, // Adjusted height to accommodate text below icons
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
