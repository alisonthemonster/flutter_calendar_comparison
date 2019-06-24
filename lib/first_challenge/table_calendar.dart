import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'en_US',
      initialCalendarFormat: CalendarFormat.month,
      formatAnimation: FormatAnimation.slide,
      startingDayOfWeek: StartingDayOfWeek.monday,
      availableGestures: AvailableGestures.none, //disable swipe between days
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      calendarStyle: CalendarStyle(
        weekdayStyle: TextStyle(color: Colors.white),
        weekendStyle: TextStyle(color: Colors.white),
        outsideStyle: TextStyle(color: Colors.grey.shade900),
        unavailableStyle: TextStyle(color: Colors.grey.shade900),
        outsideWeekendStyle: TextStyle(color: Colors.grey.shade900),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        dowTextBuilder: (date, locale) {
          return DateFormat.E(locale).format(date).substring(0, 2);
        },
        weekdayStyle: TextStyle(color: Colors.white),
        weekendStyle: TextStyle(color: Colors.white),
      ),
      headerVisible: false,
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, _) {
          return Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            margin: const EdgeInsets.all(4.0),
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                '${date.day}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
