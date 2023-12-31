import 'package:flutter/material.dart';
import 'package:myapp/screens/registerVendor/registervendor8.dart';

class Registervendor7Screen extends StatelessWidget {
  const Registervendor7Screen({Key? key}) : super(key: key);
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
                                builder: (context) => const Registervendor8Screen()),
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
                RowWithIconAndText(),
               
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
  // ignore: non_constant_identifier_names
  Widget RowWithIconAndText() {
  return const Padding(
    padding: EdgeInsets.only(left: 30, top: 10, bottom: 10,right:20),
    child: Row(
      children: [
        Icon(
          Icons.home,
          size: 20, // Adjust size as needed
          color: Color(0xFF030303),
        ),
        SizedBox(width: 10), // Adjust width as needed for space between icon and text
        Expanded(
          child: Text(
            'ข้อมูลธนาคาร',
            style: TextStyle(
              color: Color(0xFF5AC8FA),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1.31,
            ),
          ),
        ),
      ],
    ),
  );
}

  Widget profile() {
    return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Form(
        // Your form content here
        child: Column(
          children: [
            
             textField2(),
             const SizedBox(height: 10),
            textField1(),
            const SizedBox(height: 10),
            car(),
             const SizedBox(height: 10),
            profileIconTextField(),
            const SizedBox(height: 10),
            card() ,
            const SizedBox(height: 10),
             ButtonsRow(),
    
   

              const SizedBox(height: 10), // Adjust spacing before the buttons
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
                    '  กลับหน้าหลัก  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      height: 1.16,
                    ),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                child:ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8), backgroundColor: const Color(0xFF526B8C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    ' ดำเนินการต่อ ',
                    style: TextStyle(
                      color: Colors.black,
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
  // ignore: non_constant_identifier_names
  Widget ButtonsRow() {
  return Padding(
    padding: const EdgeInsets.only(top: 10), // Adjust top as needed
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(width: 105), // Adjust width as needed between buttons
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(3, 3, 3, 0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              // Add onPressed functionality
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: const Color(0xFF5AC8FA), // Button text color
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              '  บันทึก  ', // First button label
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                color: Colors.white,
                height: 1.0,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20), // Adjust width as needed between buttons
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(3, 3, 3, 0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              // Add onPressed functionality
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: const Color(0xFFF0F0F0), // Button text color
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              ' ยกเลิก ', // Second button label
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                color: Colors.black,
                height: 1.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget card() {
   return Center(
   child:Padding(
    padding: const EdgeInsets.only(top: 20, left: 25), // Adjust top and left as needed
    child: Container(
      width: 326, // Adjust width as needed
      height: 135, // Adjust height as needed
      decoration: const BoxDecoration(
        color: Color(0xFFF8F8F8), // Background color
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left:80,bottom:10),// Adjust padding as needed
            child: Text(
              'อัพโหลดหน้าบัญชี', // First row text
              style: TextStyle(
                color: Color(0xFF030303),
                fontSize: 16,
                fontFamily: 'Nunito',
                height: 1.3, // Line height
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,bottom:10), // Adjust left padding as needed
            child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 8), // Add space between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add onPressed functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF24AEF6), // Button background color
                    onPrimary: Colors.white, // Button text color
                    padding: EdgeInsets.symmetric(horizontal: 8), // Adjust padding as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    'อัพโหลดรูป', // Second row button label
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 20), // Add space between buttons
                OutlinedButton(
                  onPressed: () {
                    // Add onPressed functionality
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF00C0FB)), // Border color
                    padding: EdgeInsets.symmetric(horizontal: 8), // Adjust padding as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: Text(
                    'ถ่ายภาพ', // Third row button label
                    style: TextStyle(
                      color: Color(0xFF24AEF6),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:80), // Adjust padding as needed
            child: Text(
              'drag and drop them here', // Third row text
              style: TextStyle(
                color: Color(0xFF030303),
                fontSize: 16,
                fontFamily: 'Nunito',
                height: 1.3, // Line height
              ),
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
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF5AC8FA),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'ชื่อที่บัญชี',
              hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
            ),
            style: const TextStyle(
            color: Colors.white,
            fontSize: 18, // Adjust font size as needed
            fontFamily: 'Roboto',
            height: 1.28, // Adjust line height as needed
          ),
          ),
        ),
      ),
    ],
  );
}
 Widget car() {
    return Row(
    children: [
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF5AC8FA),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'เลขที่บัญชี',
              hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
            ),
            style: TextStyle(
            color: Colors.white,
            fontSize: 18, // Adjust font size as needed
            fontFamily: 'Roboto',
            height: 1.28, // Adjust line height as needed
          ),
          ),
        ),
      ),
    ],
  );
  }
 Widget textField() {
  return Row(
    children: [
      const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.portable_wifi_off_outlined,
            color: Color(0xFF030303),
            size: 19,
          ),
        ),
      const SizedBox(width: 10),
      Expanded(
        child: Container(
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
                  '  ใบอนุญาติขับขี่                                                        ',
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
            color: Color(0xFF5AC8FA),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'สาขา',
              hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
            ),
            style: TextStyle(
            color: Colors.white,
            fontSize: 18, // Adjust font size as needed
            fontFamily: 'Roboto',
            height: 1.28, // Adjust line height as needed
          ),
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
            icon: Icon(Icons.arrow_drop_down, color:  Color(0xFF4EB9E7)),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color:  Color(0xFF4EB9E7)),
            underline: Container(
              height: 0,
              color:  Color(0xFF4EB9E7),
            ),
            items: <String>['default'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  '  ไม่เคยต้องโทษคดีร้ายแรง                                       ',
                  style: TextStyle(
                    color: Color(0xFF4EB9E7),
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
Widget textField3() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFC8EDFD),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              // hintText: 'Enter text',
              // hintStyle: TextStyle(color: Colors.black87),
            ),
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ),
    ],
  );
}
  

  


  Widget _buildBottomTabBar() {
    
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(
        top: 10,
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
