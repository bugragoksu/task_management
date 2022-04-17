import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/icons.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLogin = true;
  String buttonText = 'Login';
  String loginText = 'Welcome\nPlease log in to continue';
  String registerTexxt = 'Welcome\nPlease sign in to continue';
  String toSignUpText = 'Don\'t have an account?\nSign up';
  String toLoginText = 'Already have an account?\nLogin';

  void _changePage() {
    setState(() {
      buttonText = _isLogin ? 'Register' : 'Login';
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 48,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _isLogin ? 'Login' : 'Sign Up',
                style: Theme.of(context).textTheme.headline1,
              ),
              const Spacer(),
              Text(_isLogin ? loginText : registerTexxt),
              const Spacer(
                flex: 2,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(AppIcons.mail),
                ),
              ),
              const Spacer(),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(AppIcons.lock),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(buttonText),
                ),
              ),
              const Spacer(),
              Center(
                child: TextButton(
                  onPressed: _changePage,
                  child: Text(
                    _isLogin ? toSignUpText : toLoginText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
