import 'package:flutter/material.dart';

class Page3B extends StatelessWidget {
  final String? name;
  Page3B({super.key, this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name Option B'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'This is a snackbar demo. Click the button below to see it in action.'),
            ElevatedButton(
                //todo: Implement logic for the Top Snackbar
                onPressed: () => ScaffoldMessenger.of(context)
                        .showMaterialBanner(MaterialBanner(
                      backgroundColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      content: Container(
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.02,
                              ),
                              Text('Hi!\nThis is a snackbar on Top')
                            ]),
                      ),
                      actions: const [SizedBox()],
                      onVisible: () {
                        Future.delayed(const Duration(seconds: 3), () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        });
                      },
                    )),
                child: const Text('Show Top Snackbar')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.black.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        content:
                            const Text('Hi!\nThis is a snackbar on Bottom'))),
                child: const Text('Show Botton Snackbar'))
          ],
        ),
      )),
    );
  }
}
