import 'package:flutter/material.dart';
import '../registerVendor/registervendor1.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFFFFFF),
        child: Scaffold(
          body: Column(
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
                              builder: (context) => const SecondScreen()),
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
              Container(
                margin: const EdgeInsets.all(11),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(3, 3, 3, 0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    // Image
                    Positioned(
                      left: 18,
                      top: 9,
                      child: Container(
                        width: 35,
                        height: 29,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(3, 3, 3, 0.1),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Image.asset('images/i1.jpg'),
                      ),
                    ),

                    Positioned(
                      left: 70,
                      top: 9,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 18,
                            height: 17,
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF030303),
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                              width: 211,
                              height: 26,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(3, 3, 3, 0.1),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: const Text(' ค้นหาบริการ ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.15,
                                    height: 1.24,
                                  ))),
                        ],
                      ),
                    ),

                    const Positioned(
                      right: 15,
                      top: 9,
                      child: SizedBox(
                        width: 20,
                        height: 16,
                        child: Icon(
                          Icons.settings,
                          color: Color(0xFF030303),
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'เลือกบริการ',
                    style: TextStyle(
                        color: Color(0xFF5AC8FA),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 1.31),
                    textAlign: TextAlign.center,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildImageWidget(
                        'images/i2.jpg',
                        width: 66,
                        height: 91,
                      ),
                      _buildTextWidget('    เพื่อนเที่ยว', false),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildImageWidget(
                        'images/i3.jpg',
                        width: 66,
                        height: 91,
                      ),
                      _buildTextWidget('    พาหาหมอ', false),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildImageWidget(
                        'images/i4.jpg',
                        width: 66,
                        height: 91,
                      ),
                      _buildTextWidget('   ธุรกรรม', false),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildImageWidget(
                          'images/i5.jpg',
                          width: 66,
                          height: 91,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _buildTextWidget('  สัตว์เลี้ยง', true),
                            const Icon(Icons.more_vert, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'เพิ่มเติม',
                      style: TextStyle(
                        color: Color(0xFF526B8C),
                        fontSize: 9,
                        fontFamily: 'Roboto',
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'เกี่ยวกับเรา',
                    style: TextStyle(
                        color: Color(0xFF5AC8FA),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        height: 1.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Image.asset(
                      'images/i6.png',
                      width: 40,
                      height: 60,
                      fit: BoxFit.cover,
                      // Other styles here
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Image.asset(
                      'images/i7.png',
                      width: 67,
                      height: 93,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                      child: Image.asset(
                        'images/i8.png',
                        width: 95,
                        height: 125,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Image.asset(
                        'images/i9.png',
                        width: 67,
                        height: 93,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Image.asset(
                        'images/i10.png',
                        width: 40,
                        height: 60,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ความปลอดภัย',
                    style: TextStyle(
                        color: Color(0xFF5AC8FA),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        height: 1.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'images/i11.png',
                      width: 92,
                      height: 41,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Image.asset(
                      'images/i12.png',
                      width: 87,
                      height: 26,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '       รีวิวจากลูกค้า',
                        style: TextStyle(
                          color: Color(0xFF5AC8FA),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      )),
                  SizedBox(width: 5), // Adjust the space between text and icon
                  Icon(
                    Icons.more_horiz,
                    size: 40, // Adjust the size of the icon
                    color: Color(
                        0xFF030303), // Change the color to your preference
                  ),
                ],
              ),
              _buildBottomTabBar(),
            ],
          ),
        ));
  }

  Widget _buildBottomTabBar() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.only(
        top: 22,
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

  Widget _buildImageWidget(String imagePath,
      {double width = 66, double height = 91}) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 3),
      width: 66,
      height: 91,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(3, 3, 3, 0.1),
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTextWidget(String text, bool isLastText) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF030303),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold, // Bold text
            height: 1.0,
          ),
        ),
      ],
    );
  }
}
