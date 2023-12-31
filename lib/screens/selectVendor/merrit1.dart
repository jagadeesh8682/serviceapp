import 'package:flutter/material.dart';


class Merrit1Screen extends StatelessWidget {
  const Merrit1Screen ({Key? key}) : super(key: key);
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
                customImage(),
                SizedBox(height: 10),
                 _buildBottomTabBar(),
              ],
            ),
          ],
        )));
  }

  Widget customImage() {
    return SingleChildScrollView(
        child: Column(
      children: [
        // Text widget
        const Padding(
  padding: EdgeInsets.only(top:30,bottom: 30.0),
        child:Text(
          'ทำบุญแทน',
          style: TextStyle(
            color: Color(0xFF526b8c),
            fontSize: 20,
            fontFamily: 'Roboto',
            height: 1.3,
          ),
          textAlign: TextAlign.center,
        )),

        // First row with 3 images and text below each image
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildImageWithTextBelow(
              'images/m1.png',
              ' ปล่อยปลา/นก ',
              width: 85,
              height: 75,
            ),
            _buildImageWithTextBelow(
              'images/m2.png',
              ' ถวายสังฆทาน',
              width: 75,
              height: 100,
            ),
            _buildImageWithTextBelow(
              'images/m3.png',
              '  ใส่บาตร ',
              width: 85,
              height: 75,
            ),
          ],
        ),

Padding(
  padding: EdgeInsets.only(top: 30.0,left:60,right:60,bottom:40), // Adjust top padding if needed
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
  padding: const EdgeInsets.only(left:0,right:0), 
     child: _buildImageWithTextBelow(
        'images/m4.png',
        'บริจาคสิ่งของ',
        width: 75,
        height: 100,
      )),
       Padding(
  padding: const EdgeInsets.only(left:0,right:0),
      child:_buildImageWithTextBelow(
        'images/m5.jpg',
        ' จิตอาสา ',
        width: 75,
        height: 100,
      )),
     
    ],
  ),
),
Padding(
    padding: EdgeInsets.only(top: 70.0, left: 10.0,bottom:0), // Adjust top and left positioning
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

      ],
    ));
  }
 
  Widget _buildImageWithTextBelow(String imageUrl, String text, {double width = 75, double height = 75}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0), // Adjust the space between the image and the card
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(3, 3, 3, 0.1),
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF030303),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1.0,
            ),
          ),
        ),
      ),
     
      
    ],
  );
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
