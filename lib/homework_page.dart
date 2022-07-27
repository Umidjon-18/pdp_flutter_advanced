import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeworkPage extends StatefulWidget {
  const HomeworkPage({Key? key}) : super(key: key);

  @override
  State<HomeworkPage> createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: const Text('flutter').tr(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('ko', 'KO'));
                  },
                  child: const Text('Korean'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('ja','JA'));
                  },
                  child: const Text('Japanese'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
