import 'package:flutter/material.dart';
import 'package:myapp/screens/registerCustomer/registercustomer1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: const Color(0xFFFFFFFF),
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Registercustomer1Screen()),
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
                        imageWithText(
                          imageUrl: 'images/icon.png',
                          text: 'All In One',
                        ),
                        profileRow(),
                        profileRow1(),
                        profile(),
                        customButton(
                          onPressed: () {
                            // Your login logic here
                          },
                          label: 'LOGIN',
                        ),

                        card(),
                        // RowWithIconAndText(),

                        // profile(),
                      ],
                    ),
                  ],
                ))));
  }

  Widget customButton(
      {required VoidCallback onPressed, required String label}) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 29, right: 29, bottom: 20),
      width: 300,
      height: 51,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFFe5f5fc),
          backgroundColor: const Color(0xFF40bae8),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          textStyle: const TextStyle(
            fontSize: 13,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
        ),
        child: Text(label),
      ),
    );
  }

  Widget imageWithText({
    required String imageUrl,
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50), // Adjust top padding here
          child: Container(
            width: 215,
            height: 123,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl), // Use AssetImage for local images
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFF0e3456),
                  fontSize: 33,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  height: 1.6,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
            width:
                10), // Adjust spacing between image and other content if needed
        // Add other widgets here if required
      ],
    );
  }

  Widget profileRow() {
    return Container(
      margin: const EdgeInsets.only(top: 80, left: 28, right: 28),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFc2c8c0),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.person, // Replace this with the icon you need
            size: 23,
            color: Color(0xFF0e3456),
          ),
          const SizedBox(width: 8), // Add spacing between icon and text field
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFF0e3456),
                fontSize: 17,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                height: 1.3,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'ชื่อผู้ใช้งาน',
                hintStyle: TextStyle(
                  color: Color(0xFF0e3456),
                  fontSize: 17,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileRow1() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 28, right: 28),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFc2c8c0),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.lock, // Replace this with the icon you need
            size: 23,
            color: Color(0xFF0e3456),
          ),
          const SizedBox(width: 8), // Add spacing between icon and text field
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFF0e3456),
                fontSize: 17,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                height: 1.3,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'รหัสผ่าน',
                hintStyle: TextStyle(
                  color: Color(0xFF0e3456),
                  fontSize: 17,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profile() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 250, right: 28),
      child: const Text(
        ' ลืมรหัสผ่าน ? ',
        style: TextStyle(
          color: Color(0xFF959595),
          fontSize: 14,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }

  Widget card() {
    return const Align(
      alignment: Alignment.center, // Adjust alignment as per your requirement
      child: Text(
        ' ยังไม่มีบัญชีผู้ใช้งาน? สมัคร ',
        style: TextStyle(
          color: Color(0xFF959595),
          fontSize: 14,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
