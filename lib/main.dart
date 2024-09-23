import 'package:flutter/material.dart';
import 'package:job_seeker_app/provider/customer_support.dart';
import 'package:job_seeker_app/screens/booking_management/booking_management_screen.dart';
import 'package:job_seeker_app/screens/customer_support_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CustomerSupportProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BookingManagementScreen(),
      ),
    );
  }
}

