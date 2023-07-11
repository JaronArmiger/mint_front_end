import 'package:flutter/material.dart';
import 'package:mint_front_end/common/snackbar_global.dart';
import 'package:mint_front_end/features/auth/screens/landing_screen.dart';
import 'package:mint_front_end/providers/user_provider.dart';
import 'package:mint_front_end/router.dart';
import 'package:provider/provider.dart';

import 'constants/global_variables.dart';
import 'features/user/main/screens/user_main.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
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
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const UserMain()
          : const LandingScreen(),
    );
  }
}
