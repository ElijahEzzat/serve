/*import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()),
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Date',
              ),
              controller: _dateController,
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a date.';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form is valid, do something with the data
                  // For example, submit the form to a server
                  print('Date: ${_dateController.text}');
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _timeController;

  @override
  void initState() {
    super.initState();
    _timeController = TextEditingController(
      text: DateFormat('h:mm a').format(DateTime.now()),
    );
  }

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Time',
              ),
              controller: _timeController,
              onTap: () async {
                final TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (picked != null) {
                  _timeController.text = DateFormat('h:mm a').format(
                    DateTime(DateTime.now().year, DateTime.now().month,
                        DateTime.now().day, picked.hour, picked.minute),
                  );
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a time.';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form is valid, do something with the data
                  // For example, submit the form to a server
                  print('Time: ${_timeController.text}');
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}