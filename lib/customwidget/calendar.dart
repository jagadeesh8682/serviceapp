import 'package:flutter/material.dart';

class NameImageContainer extends StatefulWidget {
  @override
  _NameImageContainerState createState() => _NameImageContainerState();
}

class _NameImageContainerState extends State<NameImageContainer> {
  late DateTime _selectedFrom;
  late DateTime _selectedTo;

  @override
  void initState() {
    super.initState();
    _selectedFrom = DateTime.now();
    _selectedTo = DateTime.now().add(Duration(days: 7));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton<int>(
              value: _selectedFrom.year,
              onChanged: (int? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedFrom = DateTime(newValue, _selectedFrom.month, _selectedFrom.day);
                  });
                }
              },
              items: List.generate(
                30,
                (index) => DropdownMenuItem<int>(
                  value: DateTime.now().subtract(Duration(days: 365 * index)).year,
                  child: Text((DateTime.now().year - index).toString()),
                ),
              ),
            ),
            DropdownButton<int>(
              value: _selectedTo.year,
              onChanged: (int? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedTo = DateTime(newValue, _selectedTo.month, _selectedTo.day);
                  });
                }
              },
              items: List.generate(
                30,
                (index) => DropdownMenuItem<int>(
                  value: DateTime.now().add(Duration(days: 365 * index)).year,
                  child: Text((DateTime.now().year + index).toString()),
                ),
              ),
            ),
            Container( // Wrapping text in a container to constrain width
            constraints: BoxConstraints(maxWidth: 150), // Adjust the width as needed
            child: Text(
              'From: ${_selectedFrom.day}/${_selectedFrom.month}/${_selectedFrom.year}',
              style: TextStyle(fontSize: 12), // Reduce font size
            ),
          ),
          Container( // Wrapping text in a container to constrain width
            constraints: BoxConstraints(maxWidth: 150), // Adjust the width as needed
            child: Text(
              'To: ${_selectedTo.day}/${_selectedTo.month}/${_selectedTo.year}',
              style: TextStyle(fontSize: 12), // Reduce font size
            ),
          ),
        ],
      ),
        //     Text(
        //       'From: ${_selectedFrom.day}/${_selectedFrom.month}/${_selectedFrom.year}',
        //     ),
        //     Text(
        //       'To: ${_selectedTo.day}/${_selectedTo.month}/${_selectedTo.year}',
        //     ),
        //   ],
        // ),
        SizedBox(
  width: 350, // Adjust width as needed
  height: 240, // Adjust height as needed
  child: CalendarDatePicker(
    initialDate: _selectedFrom,
    firstDate: DateTime.now().subtract(Duration(days: 365)),
    lastDate: DateTime.now().add(Duration(days: 365)),
    onDateChanged: (DateTime newDate) {
      setState(() {
        _selectedFrom = newDate;
      });
    },
    initialCalendarMode: DatePickerMode.day, // You can set the initial mode
  ),
),
        // SizedBox(height: 0),
        // CalendarDatePicker(
        //   initialDate: _selectedFrom,
        //   firstDate: DateTime.now().subtract(Duration(days: 365)),
        //   lastDate: DateTime.now().add(Duration(days: 365)),
        //   onDateChanged: (DateTime newDate) {
        //     setState(() {
        //       _selectedFrom = newDate;
        //     });
        //   },
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     // Here you can handle the end date selection or additional actions
        //     print('End date selected: $_selectedTo');
        //   },
        //   child: Text('Select End Date'),
        // ),
      ],
    );
  }
}// 