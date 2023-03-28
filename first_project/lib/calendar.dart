import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(
      firstDate: DateTime(2023, 2, 1),
      initialDate: DateTime.now(),
      lastDate: DateTime(2030, 2, 28),
      onDateChanged: (value) {},
    );
  }
}
