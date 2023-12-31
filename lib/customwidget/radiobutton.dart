import 'package:flutter/material.dart';



class Radiobutton extends StatelessWidget {
  const Radiobutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.only(top: 20.0), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              RadioButtonWidget(),
              CustomButtonWidget(
                label: '1',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
              CustomButtonWidget(
                label: 'อุบัติเหตุ ',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
              CustomButtonWidget(
                label: '250',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10.0), 
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RadioButtonWidget(),
              CustomButtonWidget(
                label: '2',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
              CustomButtonWidget(
                label: 'ทรัพย์สิน',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
              CustomButtonWidget(
                label: '250',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0), 
           child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RadioButtonWidget(),
              CustomButtonWidget(
                label: '3',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
              CustomButtonWidget(
                label: '    ชีวิต    ',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
              CustomButtonWidget(
                label: '250',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // Add other styles as needed
                ),
              ),
            ],
          )),
        ],
      ),
    ));
  }
}

class RadioButtonWidget extends StatefulWidget {
  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          // Add any logic on radio button press
        });
      },
      child: Container(
        width: 21,
        height: 23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(3, 3, 3, 0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          border: Border.all(color: Colors.blue),
          color: Colors.white,
        ),
        child: isChecked
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.blue,
                ),
              )
            : SizedBox(),
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  final String label;
  final ButtonStyle buttonStyle;

  const CustomButtonWidget({
    required this.label,
    required this.buttonStyle,
  });

 @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add button press logic here
      },
      child: Text(label),
      style: buttonStyle.copyWith(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // To have rectangular buttons
            side: BorderSide(color: Colors.transparent), // Border color
          ),
        ),
      ),
    );
  }
}
