import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFieldPAge extends StatefulWidget {
  const DateFieldPAge({Key? key}) : super(key: key);

  @override
  State<DateFieldPAge> createState() => _DateFieldPAgeState();
}

class _DateFieldPAgeState extends State<DateFieldPAge> {
  String _date = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextField(
        readOnly: true,
        // controller: _date,
        decoration: InputDecoration(
          icon: Icon(
            Icons.calendar_today_rounded,
          ),
          labelText: "select",
          hintText: ("$_date"),
        ),
        onTap: () async {
          DateTime? pickeddate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          );

          if (pickeddate != null) {
            setState(() {
              _date = DateFormat('yyyy-MM-dd').format(pickeddate);
            });
          }
        },
      ),
    );
  }
}
