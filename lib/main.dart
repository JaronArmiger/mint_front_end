import 'package:flutter/material.dart';
import 'package:mint_front_end/common/snackbar_global.dart';

import 'constants/global_variables.dart';
import 'features/user/main/screens/user_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: SnackbarGlobal.key,
      debugShowCheckedModeBanner: false,
      title: 'Mint',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.lightGreen),
        useMaterial3: true,
      ),
      home: const UserMain(),
    );
  }
}
