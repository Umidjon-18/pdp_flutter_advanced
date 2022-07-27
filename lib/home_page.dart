import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                child: const Text(
                  'welcome',
                  style: TextStyle(fontSize: 22),
                ).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.setLocale(const Locale('en', 'US'));

                    },
                    child: const Text('English'),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.setLocale(const Locale('ru', 'RU'));

                    },
                    child: const Text('Russian'),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.setLocale(const Locale('uz', 'UZ'));

                    },
                    child: const Text('Uzbek'),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.setLocale(const Locale('fr', 'FR'));

                    },
                    child: const Text('French'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
