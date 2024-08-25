import 'package:flora/application/choice_chip/choice_chip_bloc.dart';
import 'package:flora/core/colors/colors.dart';
import 'package:flora/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ChoiceChipBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customPrimaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        primaryColor: colorApp,
        iconTheme: const IconThemeData(color: colorApp),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: colorApp,
        ),
        textTheme: GoogleFonts.montserratTextTheme().apply(),
        colorScheme: ColorScheme.fromSeed(seedColor: colorApp),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
