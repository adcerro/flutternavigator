import 'package:flutter/material.dart';
import 'page3a.dart';
import 'page3b.dart';

class Page2 extends StatelessWidget {
  String name;
  Page2({super.key, this.name = 'unknown'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: Text('Welcome $name!'),
        actions: [
          IconButton(
              //todo: Implement back navigation logic making sure to clean the navigation stack
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have successfully navigated to this page.',
            ),
            const SizedBox(height: 20),
            const Text('Do you want option A or B?'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  //todo: Implement navigation to page3a sending the name as a parameter
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Page3A(nam: name))),
                  child: const Text(
                    'Option A',
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Page3B(name: name))),
                    child: const Text(
                      'Option B',
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
