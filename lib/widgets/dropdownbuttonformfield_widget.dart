import 'package:flutter/material.dart';

enum MyDropdownMenu { small, large, medium }

class MyDropDownButtonFormField extends StatefulWidget {
  const MyDropDownButtonFormField({super.key});

  @override
  State<MyDropDownButtonFormField> createState() =>
      _MyDropDownButtonFormFieldState();
}

class _MyDropDownButtonFormFieldState extends State<MyDropDownButtonFormField> {
  // MyDropdownMenu currentMenu = MyDropdownMenu.small;
  final GlobalKey<FormState> form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: form,
        child: Column(
          children: <Widget>[
            TextFormField(
              initialValue: 'This is Initial value.',
              onSaved: (value) {
                print('Text: $value');
              },
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<MyDropdownMenu>(
              decoration: InputDecoration(
                labelText: 'Size',
                hintText: 'sa',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                  gapPadding: 20,
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                  gapPadding: 20,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                  gapPadding: 20,
                ),
                filled: true,
                fillColor: Colors.green.shade100,
              ),
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.purple,
              ),
              iconSize: 30,
              borderRadius: BorderRadius.circular(20.0),
              elevation: 8,

              hint: const Text('Select'),
              // value: currentMenu,
              items: <DropdownMenuItem<MyDropdownMenu>>[
                DropdownMenuItem(
                  value: MyDropdownMenu.small,
                  child: Text(MyDropdownMenu.small.name),
                ),
                DropdownMenuItem(
                  value: MyDropdownMenu.medium,
                  child: Text(MyDropdownMenu.medium.name),
                ),
                DropdownMenuItem(
                  value: MyDropdownMenu.large,
                  child: Text(MyDropdownMenu.large.name),
                ),
              ],
              onChanged: (value) {
                // if (value == null) return;
                // setState(() {
                //   // currentMenu = value;
                // });
              },
              validator: (value) {
                if (value == null) {
                  return 'Select a Size.';
                }
                return null;
              },
              onSaved: (value) {
                print('Selected Item: $value');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (form.currentState!.validate() == false) {
                  return;
                } else {
                  form.currentState!.save();
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
