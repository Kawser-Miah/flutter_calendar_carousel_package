import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _selectedDate1 = DateTime.now();
  final DateTime _targetDateTime1 = DateTime.now();

  DateTime _selectedDate2 = DateTime.now();
  final DateTime _targetDateTime2 = DateTime.now();

  DateTime _selectedDate3 = DateTime.now();
  final DateTime _targetDateTime3 = DateTime.now();

  final EventList<Event> _markedDateMap = EventList<Event>(events: {
    DateTime(2024, 7, 29): [
      Event(
        date: DateTime(2024),
        title: "Event1",
        dot: Container(
          margin: const EdgeInsets.symmetric(horizontal: 1.0),
          color: Colors.red,
          height: 5.0,
          width: 5.0,
        ),
      ),
      Event(
        date: DateTime(2024),
        title: "Event2",
      )
    ],
    DateTime(2024, 7, 12): [
      Event(
        date: DateTime(2024, 7, 13),
      )
    ]
  });
  @override
  Widget build(BuildContext context) {
    final CalendarCarousel _calendarCarouselReactAngulerBorder =
        CalendarCarousel<Event>(
      height: 420,
      todayBorderColor: Colors.white,
      selectedDateTime: _selectedDate1,
      targetDateTime: _targetDateTime1,
      daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: false,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      onDayPressed: (date, event) {
        setState(() => _selectedDate1 = date);
      },
      selectedDayButtonColor: Colors.green,
      selectedDayTextStyle: const TextStyle(color: Colors.yellow),
      weekendTextStyle: const TextStyle(color: Colors.red),
      thisMonthDayBorderColor: Colors.black,
      todayTextStyle: const TextStyle(color: Colors.white),
      todayButtonColor: Colors.blue,
      prevMonthDayBorderColor: Colors.grey,
      nextMonthDayBorderColor: Colors.grey,
    );

    //
    final CalendarCarousel _calendarCarouselCirculerBorder =
        CalendarCarousel<Event>(
      height: 420,
      todayBorderColor: Colors.white,
      selectedDateTime: _selectedDate2,
      targetDateTime: _targetDateTime2,
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      onDayPressed: (date, event) {
        setState(() => _selectedDate2 = date);
      },
      selectedDayButtonColor: Colors.green,
      selectedDayTextStyle: const TextStyle(color: Colors.yellow),
      weekendTextStyle: const TextStyle(color: Colors.red),
      thisMonthDayBorderColor: Colors.black,
      todayTextStyle: const TextStyle(color: Colors.white),
      todayButtonColor: Colors.blue,
      prevMonthDayBorderColor: Colors.grey,
      nextMonthDayBorderColor: Colors.grey,
      markedDatesMap: _markedDateMap,
      markedDateCustomTextStyle: const TextStyle(color: Colors.blue),
    );

    //
    final CalendarCarousel _calendarCarouselNoBorder = CalendarCarousel<Event>(
      height: 420,
      todayBorderColor: Colors.white,
      selectedDateTime: _selectedDate3,
      targetDateTime: _targetDateTime3,
      // daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: false,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      onDayPressed: (date, event) {
        setState(() => _selectedDate3 = date);
      },
      selectedDayButtonColor: Colors.green,
      selectedDayTextStyle: const TextStyle(color: Colors.yellow),
      weekendTextStyle: const TextStyle(color: Colors.red),
      thisMonthDayBorderColor: Colors.black,
      todayTextStyle: const TextStyle(color: Colors.white),
      todayButtonColor: Colors.blue,
      prevMonthDayBorderColor: Colors.grey,
      nextMonthDayBorderColor: Colors.grey,
      markedDatesMap: _markedDateMap,
      markedDateCustomTextStyle: const TextStyle(color: Colors.blue),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: const Center(
                  child: Text(
                "With ReactAngular border",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: _calendarCarouselReactAngulerBorder,
            ),
            const Divider(),
            Container(
              child: const Center(
                  child: Text(
                "With Circuler border",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: _calendarCarouselCirculerBorder,
            ),
            const Divider(),
            Container(
              child: const Center(
                  child: Text(
                "With No border",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: _calendarCarouselNoBorder,
            ),
          ],
        ),
      ),
    );
  }
}
