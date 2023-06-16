import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    /// This method is called at first and only one time,
    /// when the state object "MyStatefulWidgetState" is created.

    print('createState');
    return MyStatefulWidgetState();
  }
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  int count = 0;

  @override
  void initState() {
    /// after the called createState(), this method is
    /// called only one time, when the state object is initiate.

    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    /// after the called initState(), this method is called,
    /// this method is called multiple times, as it's needs.
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyStatefulWidget oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    /// after the called didChangeDependencies(), this method
    /// is called, this method is called multiple times, as developer needs.

    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget'),
      ),
      body: Center(
        child: Text('Count: $count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void deactivate() {
    /// before the dispose() method call, this
    /// method is called, when the widget is dispose.
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    /// after the deactivate() method called, this
    /// method is call, when the widget is killed.
    print('dispose');
    super.dispose();
  }
}
