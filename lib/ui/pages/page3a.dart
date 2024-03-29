import 'package:flutter/material.dart';

String? name;

class Page3A extends StatefulWidget {
  Page3A({super.key, String nam = 'unknown'}) {
    name = nam;
  }

  @override
  State<Page3A> createState() => _Page3AState();
}

class _Page3AState extends State<Page3A> {
  String currentSelection = 'Give me candy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$name Option A'), key: const Key('appBar')),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Botton Sheet modal.'),
            const SizedBox(height: 20),
            Text(currentSelection, key: const Key('currentSelection')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: Wrap(
                          children: <Widget>[
                            ListTile(
                                leading: const Icon(Icons.food_bank),
                                title: const Text('I like candy'),
                                key: const Key('likeCandyTile'),
                                onTap: () {
                                  setState(() {
                                    currentSelection = 'Give me candy';
                                  });
                                  Navigator.pop(context);
                                }),
                            ListTile(
                              key: const Key('noCandyTile'),
                              leading: const Icon(Icons.close),
                              title: const Text('I don´t like candy'),
                              onTap: () {
                                setState(() {
                                  currentSelection = 'No, no candy for me';
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    })
              },
              child: const Text('Show Bottom Sheet modal'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
