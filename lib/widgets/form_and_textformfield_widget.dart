import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  bool _isPasswordHide = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                label: const Text('E-mail'),
                hintText: 'Enter Your E-mail',
                counterText: 'counterText',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 50,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 50,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 50,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Please Enter your E-mail';
                } else if (RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!.trim()) ==
                    false) {
                  return 'Please Enter valid E-mail';
                }
                return null;
              },
              onSaved: (newValue) {
                print(newValue);
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                label: const Text('Password'),
                hintText: 'Password',
                helperText: 'At least 8 characters',
                suffixIcon: IconButton(
                  onPressed: () {
                    _isPasswordHide = !_isPasswordHide;
                    if (mounted) setState(() {});
                  },
                  icon: Visibility(
                    visible: _isPasswordHide,
                    replacement: const Icon(Icons.visibility),
                    child: const Icon(Icons.visibility_off),
                  ),
                ),
                border: const OutlineInputBorder(),
              ),
              maxLength: 10,
              obscureText: _isPasswordHide,
              // obscuringCharacter: '*',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Please Enter your Password';
                } else if (value!.trim().length < 8) {
                  return 'Password must be at least 8 characters.';
                }
                return null;
              },
              onSaved: (newValue) {
                print(newValue);
              },
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                if (form.currentState!.validate() == true) {
                  print('Valid');
                  form.currentState!.save();
                  form.currentState!.reset();
                } else
                  print('inValid');
              },
              icon: const Icon(Icons.login),
              label: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
