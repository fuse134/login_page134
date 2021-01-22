import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class loginpage extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controller1;
  TextEditingController _controller2;

  // Radio
  String _type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login Page"),
      ),
      body: Container(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
//text fild
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ClipPath(
              //   clipper: MyClipper(),
              //   child: Container(
              //     width: double.infinity,
              //     height: 120,
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //           colors: [Colors.pink[400], Colors.pink[800]]),
              //     ),
              //   ),
              // ),

//text form fild
              Column(
                children: [
                  Title(
                      color: Colors.white,
                      child: Text("Login", style: TextStyle(fontSize: 50))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  child: TextFormField(
                    controller: _controller1,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),

              Divider(),

//submit button
              Container(
                width: 350,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('Done'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print(_controller1);
                    }
                    if (_formKey.currentState.validate()) {
                      print(_controller2);
                    }

                    print(_type);
                  },
                ),
              ),
              Column(
                children: [
                  Text("or",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text("Register",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue)),
                  Text("or",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  RaisedButton(
                    textColor: Colors.black,
                    color: Colors.grey,
                    child: Text('Guest'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height * 0.75);

//     path.quadraticBezierTo(
//         size.width / 2, size.height * 0.33, size.width, size.height * 0.45);

//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
