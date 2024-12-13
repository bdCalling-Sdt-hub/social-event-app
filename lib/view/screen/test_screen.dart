import 'package:flutter/material.dart';
import 'package:social_event/view/component/text/common_text.dart';

void main() => runApp(const MyApp());

///
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint(Theme.of(context).textTheme.displaySmall?.fontFamily);
    debugPrint(Theme.of(context).textTheme.bodyMedium?.fontFamily);
    debugPrint(Theme.of(context).textTheme.bodyMedium?.fontFamily);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(
                text: "hello",
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
              Text(
                "hello",
                style: TextStyle(
                  fontFamily: 'SFProText',

                    fontSize: 40, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
