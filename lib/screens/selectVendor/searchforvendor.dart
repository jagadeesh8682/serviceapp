import 'package:flutter/material.dart';

class SearchforvendorScreen extends StatelessWidget {
  const SearchforvendorScreen({Key? key}) : super(key: key);
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
            ImageContainer(imagePath: 'images/map.png'),
             const SizedBox(height: 20),
            //         // const SizedBox(height: 10),
            //         // LanguageTextField(),
            //         //  const SizedBox(height: 10),
            //         //  idCardTextField(),
            //         // const SizedBox(height: 10),
            //         // car(),
            //         // const SizedBox(height: 10),
            //         // textField(),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Padding(
                    padding: const EdgeInsets.only(left:50,right: 50),
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
                          ' กลับไปก่อนหน้า ',
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SizedBox(
              width: 120,
              height: 125,
              child: Image.asset(
                    'images/ima.png', // Replace with your image path
                    fit: BoxFit.cover,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 40.0,right:20),
            child: Text(
              'กรุณารอสัก\n'
              'ครู่ เรากำลัง\n'
              '  ค้นหาผู้ให้\n'
              '  บริการที่ดี\n'
              'ที่สุดให้คุณอยู่\n'
                            '   ค่ะ   ',
              style: TextStyle(
                color: Color(0xFF526B8C),
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.2),
                textAlign: TextAlign.center,
              
            ),
          ),
        ],
      ),
    );
  }

  Widget ImageContainer( {required String imagePath}) {
  return Container(
    margin: const EdgeInsets.only(top: 30, left: 12,right:20),
    width: 330,
    height: 206,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath ),
        fit: BoxFit.cover,
      ),
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
