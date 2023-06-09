import 'package:flutter/material.dart';

class MytextField extends StatefulWidget {
  const MytextField({super.key});

  @override
  State<MytextField> createState() => _MytextFieldState();
}

class _MytextFieldState extends State<MytextField> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  bool _passwordIsVisible = true;
  String? _emailErrorMessage;
  String? _passwordErrorMessage;

  @override
  void initState() {
    _emailController = TextEditingController(text: 'default@gmail.com');
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController!.dispose();
    _passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              label: const Text('E-mail'),
              hintText: 'user@gmail.com',
              prefixIcon: const Icon(Icons.email_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),
              errorText: _emailErrorMessage,
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              print('on Changed email');
            },
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              label: const Text('Password'),
              hintText: 'Enter your password',
              prefixIcon: const Icon(Icons.password),
              suffixIcon: IconButton(
                onPressed: () {
                  _passwordVisibleVisibleoff();
                },
                icon: Icon(_passwordIsVisible == true
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),
              errorText: _passwordErrorMessage,
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            obscureText:
                _passwordIsVisible, // when true password is invisible, other wise visible
            onChanged: (value) {
              print('on Changed password');
            },
            onSubmitted: (value) {
              print('on Submitted');
              // print(value);
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_validate() == true) {
                print('Valide Data');
                print('Email: ${_emailController!.text}');
                print('Password: ${_passwordController!.text}');
                _emailController!.clear();
                _passwordController!.clear();
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  void _passwordVisibleVisibleoff() {
    setState(() {
      _passwordIsVisible = !_passwordIsVisible;
    });
  }

  bool _validate() {
    if (_emailController!.text.isEmpty == true) {
      setState(() {
        _emailErrorMessage = 'Enter your email address.';
      });
      return false;
    }
    if (_emailController!.text.endsWith('.com') == false) {
      setState(() {
        _emailErrorMessage = 'Enter valid email address.';
      });
      return false;
    }
    if (_passwordController!.text.isEmpty == true) {
      setState(() {
        _emailErrorMessage = null;
        _passwordErrorMessage = 'Enter your password.';
      });
      return false;
    }
    if (_passwordController!.text.trim().length < 8) {
      setState(() {
        _emailErrorMessage = null;
        _passwordErrorMessage =
            'Password needs to be at least 8 characters long.';
      });
      return false;
    }
    setState(() {
      _passwordErrorMessage = null;
    });
    return true;
  }
}
