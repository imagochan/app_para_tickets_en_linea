import 'package:app_para_tickets_en_linea/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:app_para_tickets_en_linea/reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height*0.2, 20, 0),
                child: Column(
                  children: 
                    <Widget>[
                      logoWidget("assets/images/nerv.png"),
                      SizedBox(height: 30,),
                      reusableTextField("Enter Username", Icons.person_outline, false, _emailTextController),
                      SizedBox(height: 20,),
                      reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController)
                    ],
                  ),
                  ),
            ),),
    );
  }
}