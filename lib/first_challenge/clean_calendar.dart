import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

class CleanCalendarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Calendar(
      events: _events,
      showTodayIcon: true,
      isExpanded: true,
      showArrows: false,
      selectedColor: Colors.white,
    );
  }

  final Map _events = {
    DateTime(2019, 3, 1): [
      {'name': 'Event A', 'isDone': true},
    ],
  };
}
