import 'package:flutter/material.dart';
import 'package:myapp/customwidget/calendar.dart';
import 'package:myapp/screens/registerVendor/registervendor7.dart';

class Registervendor6Screen extends StatelessWidget {
  const Registervendor6Screen({Key? key}) : super(key: key);
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
                                builder: (context) => const  Registervendor7Screen()),
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
                //  NameImageContainer(),
               
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
          Icons.calendar_month,
          size: 20, // Adjust size as needed
          color: Color(0xFF030303),
        ),
        SizedBox(width: 10), // Adjust width as needed for space between icon and text
        Expanded(
          child: Text(
            'ช่วงเวลาให้บริการ',
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Form(
        // Your form content here
        child: Column(
          children: [
           Container(
  margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
  width: 335,
  height: 283,
  child: SingleChildScrollView(
    child: NameImageContainer(),
  ),
),
            
             ButtonsRow(),
    
   

              const SizedBox(height:5), // Adjust spacing before the buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                child:ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8), backgroundColor: const Color(0xFF24AEF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    ' กลับไปก่อนหน้า ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      height: 1.16,
                    ),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                child:ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8), backgroundColor: const Color(0xFF526B8C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    ' ดำเนินการต่อ    ',
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
  return Container(
      margin: const EdgeInsets.fromLTRB(5, 10, 10, 5),
      width: 335,
      height: 173,
      decoration: BoxDecoration(
        color: Color(0xFFC8EDFD),
        borderRadius: BorderRadius.circular(10),
      ),
       child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
            padding: const EdgeInsets.only(top:5),
               child: Row(
                  children: [
                   
                   // Adjust spacing as needed
                    Text(
                      'บริการ',
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        height: 1.29,
                      ),
                    ),
                  ],
                )),
                   Padding(
            padding: const EdgeInsets.only(top:5),
               child: Container(
                  width: 252,
                  height: 21,
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
                  child: DropdownButton<String>(
                    value: 'เพื่อนเที่ยว', // Set your dropdown value here
                    onChanged: (String? newValue) {
                      // Handle dropdown value change
                    },
                    items: <String>['เพื่อนเที่ยว', 'Other Dropdown Items']
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF4EB9E7),
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  height: 1.36,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    style: TextStyle(
                      color: Color(0xFF4EB9E7),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      height: 1.36,
                    ),
                    icon: const Icon(Icons.arrow_drop_down),
                    underline: SizedBox(),
                    isExpanded: true,
                  ),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Widgets for the second row
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'วันที่',
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        height: 1.29,
                      ),
                    ),
                    SizedBox(width: 8), // Adjust spacing as needed
                    Container(
                      width: 104,
                      height: 21,
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
                      child: DropdownButton<String>(
                        value: 'Wed/05/09/2023', // Set your dropdown value here
                        onChanged: (String? newValue) {
                          // Handle dropdown value change
                        },
                        items: <String>[
                          'Wed/05/09/2023',
                          'Other Dropdown Items'
                        ].map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF4EB9E7),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  height: 1.36,
                                ),
                              ),
                            ),
                          ),
                        ).toList(),
                        style: TextStyle(
                          color: Color(0xFF4EB9E7),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          height: 1.36,
                        ),
                        icon: const Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Adjust spacing between widgets
                Row(
                  children: [
                    Text(
                      'ถึง',
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        height: 1.29,
                      ),
                    ),
                    SizedBox(width: 8), // Adjust spacing as needed
                    Container(
                      width: 118,
                      height: 21,
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
                      child: DropdownButton<String>(
                        value: 'Wed/05/09/2023', // Set your dropdown value here
                        onChanged: (String? newValue) {
                          // Handle dropdown value change
                        },
                        items: <String>[
                          'Wed/05/09/2023',
                          'Other Dropdown Items'
                        ].map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF4EB9E7),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  height: 1.36,
                                ),
                              ),
                            ),
                          ),
                        ).toList(),
                        style: TextStyle(
                          color: Color(0xFF4EB9E7),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          height: 1.36,
                        ),
                        icon: const Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'เวลา',
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        height: 1.29,
                      ),
                    ),
                    SizedBox(width: 8), // Adjust spacing as needed
                    Container(
                      width: 104,
                      height: 21,
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
                      child: DropdownButton<String>(
                        value: '08:00', // Set your dropdown value here
                        onChanged: (String? newValue) {
                          // Handle dropdown value change
                        },
                        items: <String>[
                          '08:00',
                          'Other Dropdown Items'
                        ].map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF4EB9E7),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  height: 1.36,
                                ),
                              ),
                            ),
                          ),
                        ).toList(),
                        style: TextStyle(
                          color: Color(0xFF4EB9E7),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          height: 1.36,
                        ),
                        icon: const Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Adjust spacing between widgets
                Row(
                  children: [
                    Text(
                      'ถึง',
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        height: 1.29,
                      ),
                    ),
                    SizedBox(width: 8), // Adjust spacing as needed
                    Container(
                      width: 118,
                      height: 21,
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
                      child: DropdownButton<String>(
                        value: '17:00', // Set your dropdown value here
                        onChanged: (String? newValue) {
                          // Handle dropdown value change
                        },
                        items: <String>[
                          '17:00',
                          'Other Dropdown Items'
                        ].map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF4EB9E7),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  height: 1.36,
                                ),
                              ),
                            ),
                          ),
                        ).toList(),
                        style: TextStyle(
                          color: Color(0xFF4EB9E7),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          height: 1.36,
                        ),
                        icon: const Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
    padding: const EdgeInsets.only(top: 3,), // Adjust top as needed
   
    child:Row(
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
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical:3),
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
                height: 0.5,
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
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
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
                height: 0.5,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
          // Other rows here
        ],
      ),
    );
  }




  Widget _buildBottomTabBar() {
    
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.only(
        top: 5,
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
