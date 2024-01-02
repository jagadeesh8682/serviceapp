import 'package:flutter/material.dart';
// import 'package:myapp/registervendor6.dart';

class Movehouse1Screen extends StatelessWidget {
  const Movehouse1Screen({Key? key}) : super(key: key);
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

  Widget s(BuildContext context) {
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
      //                     Navigator.push(
      // context,
      // MaterialPageRoute(
      //   builder: (context) => Registervendor6Screen(), // Replace AnotherScreen with your desired screen
      // ),
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
                buttonRowWidget(),
                twoButtonsRowWidget() ,
                twoButtonsRowWidget1(),
                checkbox(),
                inputRowWidget(),
                buttonRowWidget1(),
                checkbox1(),
                customRowWidget(),
                checkbox2(),
               
//                    searchField(),
//                 Row(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             // Adjust space between checkbox and myButton
//           myButton(),
//           checkbox(),
//            // Adjust space between checkbox and myButton
         
//         ],
//       ),
//     ),
//     // SizedBox(width: 20), // Adjust spacing between checkbox and ImageContainer
//     ImageContainer(imagePath: 'images/map.png'),
//   ],
// ),
                // searchField(),
                // // ImageContainer(  imagePath: 'images/map.png'),

                // myButton(),
                // checkbox(),
               
//
                twoOtherButtons(
                  label1: 'กลับหน้าหลัก',
                  onPressed1: () {
                    // Add functionality for the first button
                  },
                  label2: 'ดำเนินการต่อ',
                  onPressed2: () {
                    // Add functionality for the second button
                  },
                ),

                _buildBottomTabBar(),
              ],
            ),
          ],
        ));
  }
  Widget buttonRowWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20.0), // Adjust left padding as needed
        child: ElevatedButton(
          onPressed: () {
            // Button press logic here
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFE45379),
            onPrimary: Color(0xFFF1F8F0),
            textStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              height: 1.3, // Adjust line height if needed
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(' ขนาดรถที่ต้องการ '),
        ),
      ),
    ],
  );
}
Widget buttonRowWidget1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20.0,top:10), // Adjust left padding as needed
        child: ElevatedButton(
          onPressed: () {
            // Button press logic here
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFE45379),
            onPrimary: Color(0xFFF1F8F0),
            textStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              height: 1.3, // Adjust line height if needed
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text('         แรงงาน         '),
        ),
      ),
    ],
  );
}
Widget twoButtonsRowWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20.0), // Adjust left padding as needed
        child: ElevatedButton(
          onPressed: () {
            // Button press logic here
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF526B8C),
            onPrimary: Color(0xFFFFFFFF),
            textStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              height: 1.3, // Adjust line height if needed
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('  pick up  '),
        ),
      ),
      SizedBox(width: 40), // Adjust the spacing between buttons
      ElevatedButton(
        onPressed: () {
          // Button press logic here
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF526B8C),
          onPrimary: Color(0xFFFFFFFF),
          textStyle: TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            height: 1.3, // Adjust line height if needed
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text('6 ล้อ              '),
      ),
    ],
  );
}
Widget inputRowWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20.0,top:10), // Adjust left padding as needed
        child: Container(
          width: 219,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextFormField(
              initialValue: 'น้ำหนัก',
              style: TextStyle(
                color: Color(0xFFB1B1B1),
                fontSize: 16,
                fontFamily: 'Roboto',
                height: 1.3, // Adjust line height if needed
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

 Widget checkbox() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 105),
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
                  color: Colors.white,
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
              ' ขนสินค้า ',
              style: TextStyle(
                color: Colors.white,
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
                  color: Colors.white,
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
              ' ย้ายบ้าน ',
              style: TextStyle(
                color: Colors.white,
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
    padding: const EdgeInsets.only(top: 10, left: 105),
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
                  color: Colors.white,
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
              'ไม่ต้องการ ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Row(
        //   children: [
        //     Container(
        //       width: 20,
        //       height: 20,
        //       decoration: BoxDecoration(
        //         color: const Color.fromRGBO(255, 255, 255, 1),
        //         borderRadius: BorderRadius.circular(3),
        //         boxShadow: const [
        //           BoxShadow(
        //             color: Color.fromRGBO(3, 3, 3, 0.1),
        //             blurRadius: 4,
        //             offset: Offset(0, 2),
        //           ),
        //         ],
        //         border: Border.all(
        //           color: Colors.white,
        //           width: 1,
        //         ),
        //       ),
        //       child: const Center(
        //         child: Icon(
        //           Icons.check,
        //           color: Color.fromRGBO(78, 185, 231, 1),
        //           size: 14,
        //         ),
        //       ),
        //     ),
        //     const SizedBox(width: 8), // Adjust space between checkbox and text
        //     const Text(
        //       ' ต้องการ ',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20,
        //         fontFamily: 'Roboto',
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    ),
  );
}
Widget customRowWidget() {
 return Padding(
    padding: EdgeInsets.only(left: 105.0), // Adjust left padding as needed
    child: Row(
    children: [
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(3, 3, 3, 0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.check,
            color: Color.fromRGBO(78, 185, 231, 1),
            size: 14,
          ),
        ),
      ),
      SizedBox(width: 8), // Adjust space between checkbox and text
      Text(
        ' ต้องการ ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(width: 10), // Adjust space between text and text field
      Container(
        width: 84,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextFormField(
            initialValue: 'จำนวน',
            style: TextStyle(
              color: Color(0xFFB1B1B1),
              fontSize: 14,
              fontFamily: 'Roboto',
              height: 1.3, // Adjust line height if needed
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      SizedBox(width: 10), // Adjust space between text field and text
      Text(
        'คน',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Roboto',
          height: 1.3, // Adjust line height if needed
        ),
      ),
    ],
  ));
}
Widget twoButtonsRowWidget1() {
  return Row(
     mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20.0), // Adjust left padding as needed
        child: ElevatedButton(
          onPressed: () {
            // Button press logic here
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF526B8C),
            onPrimary: Color(0xFFFFFFFF),
            textStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              height: 1.3, // Adjust line height if needed
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('   10 ล้อ   '),
        ),
      ),
      SizedBox(width: 40), // Adjust the spacing between buttons
      ElevatedButton(
        onPressed: () {
          // Button press logic here
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF526B8C),
          onPrimary: Color(0xFFFFFFFF),
          textStyle: TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            height: 1.3, // Adjust line height if needed
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text('   เทรลเลอร์   '),
      ),
    ],
  );
}

  Widget searchField() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 27, right: 27),
      width: 321,
      height: 37,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(3, 3, 3, 0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Color(0xFF4eb9e7),
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: Color(0xFF4eb9e7),
                fontSize: 14,
                fontFamily: 'Roboto',
                // lineHeight: 1.26,
              ),
              decoration: InputDecoration(
                hintText: 'ค้นหา',
                hintStyle: TextStyle(
                  color: Color(0xFF4eb9e7),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  // lineHeight: 1.26,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myButton() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 25,  bottom: 10),
      width: 104,
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: const Color(0xFFe45379), // Use the provided color
      ),
      child: ElevatedButton(
        onPressed: () {
          // Add your button onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: const Text(
          'เพิ่ม',
          style: TextStyle(
            color: Color(0xFFf1f8f0), // Use the provided color
            fontSize: 20,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
            height: 1.0,
          ),
        ),
      ),
    );
  }
   Widget checkbox2() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 10,right:10),
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
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(78, 185, 231, 1),
                  size: 14,
                ),
              ),
            ),
            const SizedBox(width: 2), // Adjust space between checkbox and text
            const Text(
              ' แตกง่ายต้องใช้ความระมัดระวังเป็นพิเศษ',
 
              style: TextStyle(
                color: Color(0xFFf1f8f0),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
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
            const SizedBox(width: 2), // Adjust space between checkbox and text
            const Text(
              ' สินค้าอันตราย/วัตถุไวไฟ ',
              style: TextStyle(
                color: Color(0xFFf1f8f0),
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

// ignore: non_constant_identifier_names
Widget ImageContainer( {required String imagePath}) {
  return Container(
    margin: const EdgeInsets.only(top: 30, left: 12,right:20),
    width: 200,
    height: 276,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath ),
        fit: BoxFit.cover,
      ),
    ),
  );
}


  Widget twoOtherButtons({
    required String label1,
    required String label2,
    required VoidCallback onPressed1,
    required VoidCallback onPressed2,
  }) {
    return Padding(
        padding: const EdgeInsets.only(top: 50), // Adjust top padding here
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onPressed1,
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              child: SizedBox(
                width: 133,
                height: 42,
                child: Center(
                  child: Text(
                    label1,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      height: 1.14,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
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
                width: 133,
                height: 42,
                child: Center(
                  child: Text(
                    label2,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      height: 1.14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildBottomTabBar() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
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




