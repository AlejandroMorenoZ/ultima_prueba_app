import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: LoginPage(),
)
);
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/TELNOR.png',
                ),
                SizedBox(height: 16.0),
                Text('Tu mundo es posible'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)

            // TODO: Remove filled: true values (103)

            // TODO: Wrap Password with AccentColorOverride (103)

            // TODO: Add TextField widgets (101)
            // TODO: Add TextField widgets (101)
            // [Name]   ButtonBar(
            //  // TODO: Add a beveled rectangular border to CANCEL (103)
            //  children: <Widget>[
            AccentColorOverride(
              //color
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 12.0),
            AccentColorOverride(
              //color
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            // TODO: Add button bar (101)
            //    // TODO: Add buttons (101)
            //  ],
            //),
            // TODO: Add buttons (101)
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
                // TODO: Clear the text fields (101)
              },
            ),
            // TODO: Add an elevation to NEXT (103)

            // TODO: Add a beveled rectangular border to NEXT (103)
            RaisedButton(
              child: Text('NEXT'),
              elevation: 8.0,
              onPressed: () {
                Navigator.pop(context);
                return Scaffold(
                  // TODO: Add app bar (102)
                  // TODO: Add a grid view (102)
                  body: Center(
                    child: Text('WELCOME'),
                  ),
                  // TODO: Set resizeToAvoidBottomInset (101)
                  resizeToAvoidBottomInset: false,
                );
                // TODO: Show the next page (101)

              },
            ),
          ],
        ),
      ),
    );
  }
}
// TODO: Add AccentColorOverride (103)
class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}
