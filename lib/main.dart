import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:flutter_clean_calendar/clean_calendar_event.dart';

import 'core/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calendar Demo',
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  final Map<DateTime, List<CleanCalendarEvent>> _events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      CleanCalendarEvent('First Session with Alex Stan',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 12, 0),
          description: 'A special event',
          color: Constants.cSecondColor,
          bgColor: Constants.cThirdColor,
          isEvent: false),
      CleanCalendarEvent(
          'Webinar: How to cope with trauma in professional lift',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 30, 0),
          description: 'A special event',
          color: Constants.cPrimaryColor,
          bgColor: Constants.cFiveColor,
          isEvent: true),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Constants.cSecondColor,
          bgColor: Constants.cThirdColor,
          isEvent: true),
      CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
        [
      CleanCalendarEvent(
        'Event B',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 10, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 12, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
      CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
      CleanCalendarEvent(
        'Event D',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
      CleanCalendarEvent(
        'Event E',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
      CleanCalendarEvent(
        'Event F',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
      CleanCalendarEvent(
        'Event G',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
      CleanCalendarEvent(
        'Event H',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Constants.cSecondColor,
        bgColor: Constants.cThirdColor,
      ),
    ],
  };

  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Calendar(
          startOnMonday: true,
          weekDays: const ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'],
          events: _events,
          isExpandable: true,
          eventDoneColor: Colors.green,
          selectedColor: Constants.cSecondColor,
          todayColor: Colors.deepOrange,
          eventColor: Constants.cBlackColor,
          // todayButtonText: 'Calendar Event',
          locale: 'en_US',
          isExpanded: true,
          expandableDateFormat: 'dd MMMM',
          dayOfWeekStyle: const TextStyle(
              color: Constants.cBlackColor,
              fontWeight: FontWeight.w800,
              fontSize: 14),
        ),
      ),
    );
  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}
