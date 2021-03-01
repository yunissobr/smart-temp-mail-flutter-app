import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_temp_mail/pages/Home.dart';
import 'package:smart_temp_mail/providers/emal_text_provider.dart';
import 'package:smart_temp_mail/providers/text_field_controller_provider.dart';

void main() {
  runApp(SmartTempMail());
}

class SmartTempMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EmailId()),
        ChangeNotifierProvider(create: (context) => TextFieldControllerProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0)),
        ),
        home: Home(),
      ),
    );
  }
}
