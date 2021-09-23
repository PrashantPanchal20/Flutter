import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chnagebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.9, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "User Name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {}); // call again again of build method
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        chnagebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 40,
                      //width: 120,
                      width: chnagebutton ? 50 : 150,        //animation
                      alignment: Alignment.center,
                      child: chnagebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        // shape: chnagebutton
                        //  ? BoxShape.circle
                        //  : BoxShape.rectangle,

                        borderRadius:
                            BorderRadius.circular(chnagebutton ? 50 : 8),
                      ),
                    ),
                  )

                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ));
  }
}
