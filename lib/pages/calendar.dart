import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff071D31),
          title: Center(
            child: Text(
              'Calendar',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            today.toString().split(' ')[0],
            style: GoogleFonts.roboto(
              fontSize: 18,
            ),
          ),
          Container(
            child: TableCalendar(
                onDaySelected: _onDaySelected,
                rowHeight: 43,
                selectedDayPredicate: (day) => isSameDay(day, today),
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                focusedDay: today,
                firstDay: DateTime.utc(2015, 01, 01),
                lastDay: DateTime.utc(2030, 12, 12)),
          )
        ],
      ),
    );
  }
}
