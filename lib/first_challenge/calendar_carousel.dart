import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, WeekdayFormat;
import 'package:flutter_calendar_carousel/classes/event.dart';

class CalendarCarouselExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          //take an action with date and its events
        },
        thisMonthDayBorderColor: Colors.transparent,
        selectedDayButtonColor: Colors.white,
        selectedDayBorderColor: Colors.white,
        selectedDayTextStyle: TextStyle( color: Colors.blue),
        weekendTextStyle: TextStyle(color: Colors.white),
        daysTextStyle: TextStyle(color: Colors.white),
        inactiveDaysTextStyle: TextStyle(color:  Colors.blue.shade900),
        nextDaysTextStyle: TextStyle(color:  Colors.grey),
        prevDaysTextStyle: TextStyle(color:  Colors.grey),
        weekdayTextStyle: TextStyle(color: Colors.white),
        weekDayFormat: WeekdayFormat.narrow,
        firstDayOfWeek: 1,
        showHeader: false,
        isScrollable: false,
        weekFormat: false,
        height: 280.0,
        selectedDateTime: DateTime(2019, 8, 14),
        daysHaveCircularBorder: false,
        // null for not rendering any border, true for circular border, false for rectangular border
        customGridViewPhysics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
