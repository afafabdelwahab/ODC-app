import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/business_logic/notes/notes_cubit.dart';
import 'package:odc/presentation/screeens/splash/splash_screen.dart';
import 'package:odc/presentation/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit()),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'ODC',
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(primaryColor),shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ),
          outlinedButtonTheme:OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              primary: primaryColor,
              side: const BorderSide(color: primaryColor),
            )
          ),
          backgroundColor: Colors.teal,
          primarySwatch: Colors.blue,
        ),

        home: const SplashScreen(),

      ),
    );
  }
}
