import 'package:flutter/material.dart';
import 'package:myapp/screens/registerVendor/registervendor4.dart';

class MatchingresultScreen extends StatelessWidget {
  const MatchingresultScreen({Key? key}) : super(key: key);
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
                                builder: (context) => const Registervendor4Screen()),
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
                const Padding(
                    padding: EdgeInsets.only(left: 70, top: 10, bottom: 10),
                    child: Text(
                      '     ผู้ให้บริการที่พร้อมรับงาน',
                      style: TextStyle(
                          color: Color(0xFF526b8c),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          height: 1.31),
                    )),
                    profile(),
                     Padding(
  padding: const EdgeInsets.only(top: 15),
  child: SizedBox(
    height: 70, // Set a fixed height for the bottom tab bar
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
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Form(
        // Your form content here
        child: Column(
          children: [
            Row(
  mainAxisAlignment: MainAxisAlignment.start, // Aligns cards to the start (left)
  crossAxisAlignment: CrossAxisAlignment.start, // Aligns cards to the top
  children: [
    Padding(
  padding: EdgeInsets.only(top: 80, left: 5),
  child: SizedBox(
    width: 100,
    height: 239,
    child: Card(
      color: Color(0xFFC8EDFD),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5), // Adjust vertical padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left:5), // Adjust image padding
              child: Image.asset(
                'images/v1.png',
                width: 80,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 3), 
            Padding(
              padding: EdgeInsets.only(left: 5),// Add space between the image and text
            child: Text(
              'ชื่อ นีน่า\n'
              'อายุ 23 ปี\n'
              'ปริญญาตรี\n'
              'มีประสบการณ์\n'
              'มีความสามารถพิเศษ\n'
              'มีใบขับขี่\n'
              'โสด\n'
              'มีประกัน',
              style: TextStyle(
                color: Color(0xFF526b8c),
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.33, // Adjust line height as needed
              ),
            )),
             SizedBox(height: 3), // Add space between the text and button
            Padding(
              padding: EdgeInsets.only(left: 5), 
              child: SizedBox(
    height: 24, /// Left padding for the button
              child: TextButton(
                onPressed: () {
                  // Handle button press
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  ),
                  
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Color(0xFF5AC8FA), width: 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  '  ดูโปรไฟล์  ',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    ),
  ),
),
    SizedBox(width: 10), // Adjust horizontal spacing between cards
    Padding(
      padding: EdgeInsets.only(top: 10, left: 5), // Padding for the second card
    child: SizedBox(
    width: 100,
    height: 239,
    child: Card(
      color: Color(0xFFB2C0DB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5), // Adjust vertical padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left:5), // Adjust image padding
              child: Image.asset(
                'images/v2.png',
                width: 80,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 3), 
            Padding(
              padding: EdgeInsets.only(left: 5),// Add space between the image and text
            child: Text(
             'ชื่อ ฟ้า\n'
          'อายุ 30 ปี\n'
          'มัธยม\n'
          'มีประสบการณ์\n'
          'มีใบขับขี่\n'
          'สมรส\n\n',
              style: TextStyle(
                color: Color(0xFF526b8c),
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.33, // Adjust line height as needed
              ),
            )),
             SizedBox(height: 3), // Add space between the text and button
            Padding(
              padding: EdgeInsets.only(left: 5), 
              child: SizedBox(
    height: 24, /// Left padding for the button
              child: TextButton(
                onPressed: () {
                  // Handle button press
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  ),
                  
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Color(0xFF5AC8FA), width: 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  '  ดูโปรไฟล์  ',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    ),
  ),
    ),
    SizedBox(width: 10), // Adjust horizontal spacing between cards
     Padding(
      padding: EdgeInsets.only(top: 80, left: 5), // Padding for the first card
      child: SizedBox(
    width: 100,
    height: 239,
    child: Card(
      color: Color(0xFFC8EDFD),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5), // Adjust vertical padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left:5), // Adjust image padding
              child: Image.asset(
                'images/v3.jpg',
                width: 80,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 3), 
            Padding(
              padding: EdgeInsets.only(left: 5),// Add space between the image and text
            child: Text(
              'ชื่อ เจนนี่\n'
          'อายุ 20 ปี\n'
          'ปริญญาโท\n'
          'มีความสามารถพิเศษ\n'
          'โสด\n\n', 
              style: TextStyle(
                color: Color(0xFF526b8c),
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.33, // Adjust line height as needed
              ),
            )),
             SizedBox(height: 3), // Add space between the text and button
            Padding(
              padding: EdgeInsets.only(left: 5), 
              child: SizedBox(
    height: 24, /// Left padding for the button
              child: TextButton(
                onPressed: () {
                  // Handle button press
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  ),
                  
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Color(0xFF5AC8FA), width: 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  '  ดูโปรไฟล์  ',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    ),
  ),
    ),
  ],
),
            
    
  Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    IconButton(
      icon: Icon(Icons.more_horiz, color: Colors.black, size: 40),
      onPressed: () {
        // Handle the action when the icon is pressed
      },
    ),
  ],
),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                child:ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8), backgroundColor: const Color(0xFF24AEF6),
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
                  padding: const EdgeInsets.only(right: 30),
                child:ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8), backgroundColor: const Color(0xFF526B8C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    ' ค้นหาเพิ่มเติม ',
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

  Widget profileIconTextField() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.g_translate,
            color: Color(0xFF030303),
            size: 19,
          ),
        ),
        const SizedBox(width: 5,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(3, 3, 3, 0.1),
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'ชื่อ/นามสกุล',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                hintStyle: TextStyle(
                  color: Color(0xFF030303),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  height: 1.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
 Widget graduate() {
    return const Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10,right:10),
        child: Icon(
          Icons.portable_wifi_off_outlined,
          color: Color(0xFF030303),
          size: 19,
        ),
      ),
      SizedBox(width: 5),
      Text(
        'อุปนิสัย',
        style: TextStyle(
          color: Color(0xFF030303),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
          height: 1.0,
        ),
      ),
    ],
  );
  }
 Widget textField() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(3, 3, 3, 0.1),
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: DropdownButton<String>(
            value: 'default',
            onChanged: (String? newValue) {
              // Implement dropdown functionality
            },
            icon: const Icon(Icons.arrow_drop_down, color: Color(0xFF030303)),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Color(0xFF030303)),
            underline: Container(
              height: 0,
              color: Colors.transparent,
            ),
            items: <String>['default'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: const Text(
                  '   ระดับการศึกษา                                                          ',
                  style: TextStyle(
                    color: Color(0xFF030303),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    height: 1.2,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ],
  );
}

Widget textField1() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFC8EDFD),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              // hintText: 'Enter text',
              // hintStyle: TextStyle(color: Colors.black87),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ),
    ],
  );
}
Widget textField2() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFC8EDFD),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              // hintText: 'Enter text',
              // hintStyle: TextStyle(color: Colors.black87),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ),
    ],
  );
}
Widget textField3() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFC8EDFD),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              // hintText: 'Enter text',
              // hintStyle: TextStyle(color: Colors.black87),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ),
    ],
  );
}
  

  Widget idCardTextField() {
    return Row(
  
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 9),
          child: Container(
            width: 22, // Change the width as needed for your icon size
            height: 22, // Change the height as needed for your icon size
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Stack(
              children: [
                Positioned(
                  top: 5,
                  left: 2,
                  child: Icon(Icons.person, color: Colors.white, size: 10),
                ),
                Positioned(
                  top: 5,
                  right: 2,
                  child: Icon(Icons.menu, color: Colors.white, size: 10),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 5),
        // SizedBox(width: 10),
        Expanded(
            child: SizedBox(
          width: 10,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(3, 3, 3, 0.1),
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'ศาสนา',
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color(0xFF030303),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  height: 1.21,
                ),
              ),
              style: TextStyle(
                color: Color(0xFF030303),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 1.2, // Adjust the height to change line spacing
              ),
            ),
          ),
        )),
        SizedBox(width: 10),

        Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(3, 3, 3, 0.1),
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: DropdownButton<String>(
               value: 'default',
              onChanged: (String? newValue) {
                // Implement dropdown functionality
              },
              icon: Icon(Icons.arrow_drop_down, color: Color(0xFF030303)),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Color(0xFF030303)),
              underline: Container(
                height: 0,
                color: Colors.transparent,
              ),
              items: <String>['default'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    '   สถานภาพ    ',
                    style: TextStyle(
                      color: Color(0xFF030303),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      height: 1.2, // Adjust the height to change line spacing
                    ),
                  ),
                );
              }).toList(),
            )),
      ],
    );
  }
   
  
  


  Widget _buildBottomTabBar() {
    
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(
        top: 25,
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
