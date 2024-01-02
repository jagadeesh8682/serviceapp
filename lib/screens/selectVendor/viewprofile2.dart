import 'package:flutter/material.dart';

class Viewprofile2Screen extends StatelessWidget {
  const Viewprofile2Screen({Key? key}) : super(key: key);
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
                Row(
  children: [
     
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
                 Padding(
      padding: EdgeInsets.only(left: 120), // Adjust the spacing as needed
      child: Image.asset(
        'images/v1.png', // Replace 'your_image.png' with your image asset
        width: 80, // Set width as needed
        height: 50, // Set height as needed
        fit: BoxFit.cover, // Choose appropriate fit type
      ),
    ),
  ],
),
                const Padding(
                    padding: EdgeInsets.only(left: 50, top: 10, bottom: 10),
                    child: Text(
                      'โปรไฟล์ผู้ให้บริการ',
                      style: TextStyle(
                          color: Color(0xFF5AC8FA),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.31),
                    )),

                    profile(),
                     Padding(
  padding: const EdgeInsets.only(top: 5),
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Form(
        // Your form content here
        child: Column(
          children: [
             const Padding(
                    padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Align(
    alignment: Alignment.centerLeft,
                    child: Text(
                      'ข้อจำกัด (ถ้ามี)',
                      style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.0),
                    ))),
                    textField(),
                    SizedBox(height: 10),
            car(),
            const SizedBox(height: 10),
            car1(),
            const SizedBox(height: 10),
           
            
            // textField(),
             const Padding(
                    padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Align(
    alignment: Alignment.centerLeft,
                    child: Text(
                      'ข้อดี',
                      style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.0),
                    ))),
                    textField1(),
                    const Padding(
                    padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Align(
    alignment: Alignment.centerLeft,
                    child: Text(
                      'ข้อเสีย',
                      style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.0),
                    ))),
                    textField2(),
                    const SizedBox(height: 10),
                  Filed(),
          

              const SizedBox(height: 20), // Adjust spacing before the buttons
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
Widget Filed() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 10),
      ),
      const SizedBox(width: 15),
      Expanded(
        flex: 3,
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
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'ไม่เคยต้องโทษคดีร้ายแรง',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(0xFF030303),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFF030303),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.arrow_drop_down, color: Color(0xFF030303)),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 7),
      Expanded(
        flex: 1,
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
              hintText: 'มีประกัน',
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
            style: const TextStyle(
              color: Color(0xFF030303),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1.2,
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

  
  Widget car1() {
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
                  '  ยานพาหนะ                                                      ',
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
  
   
Widget car() {
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
                  'ใบอนุญาติขับขี่                                                      ',
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
