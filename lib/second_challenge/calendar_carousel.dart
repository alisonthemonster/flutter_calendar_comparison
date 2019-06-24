import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, WeekdayFormat;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class CalendarCarouselExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          //take an action with date and its events
        },
        thisMonthDayBorderColor: Colors.transparent,
        selectedDayButtonColor: Color(0xFF30A9B2),
        selectedDayBorderColor: Color(0xFF30A9B2),
        selectedDayTextStyle: TextStyle(color: Colors.white),
        weekendTextStyle: TextStyle(color: Colors.white),
        daysTextStyle: TextStyle(color: Colors.white),
        nextDaysTextStyle: TextStyle(color: Colors.grey),
        prevDaysTextStyle: TextStyle(color: Colors.grey),
        weekdayTextStyle: TextStyle(color: Colors.grey),
        weekDayFormat: WeekdayFormat.short,
        firstDayOfWeek: 0,
        showHeader: false,
        isScrollable: false,
        weekFormat: false,
        height: 280.0,
        selectedDateTime: DateTime(2019, 4, 9),
        daysHaveCircularBorder: true,
        customGridViewPhysics: NeverScrollableScrollPhysics(),
        markedDatesMap: _getCarouselMarkedDates(),
        markedDateWidget: Container(
          height: 3,
          width: 3,
          decoration: new BoxDecoration(
            color: Color(0xFF30A9B2),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }

  EventList<Event> _getCarouselMarkedDates() {
    return EventList<Event>(
      events: {
        new DateTime(2019, 4, 3): [
          new Event(
            date: new DateTime(2019, 4, 3),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 5): [
          new Event(
            date: new DateTime(2019, 4, 5),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 22): [
          new Event(
            date: new DateTime(2019, 4, 22),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 24): [
          new Event(
            date: new DateTime(2019, 4, 24),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 26): [
          new Event(
            date: new DateTime(2019, 4, 26),
            title: 'Event 1',
          ),
        ],
      },
    );
  }

}
