import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/business_logic/notes/notes_cubit.dart';
import 'package:workshop/data/data_provider/local/cache_helper.dart';
import 'package:workshop/presentation/screens/splash_screen/splash_screen.dart';
import 'package:workshop/presentation/styles/app_colors.dart';

void main() {
  CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => NotesCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sizer',
            theme: ThemeData(
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppColors.primaryColor,
              ),
            ))),
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
