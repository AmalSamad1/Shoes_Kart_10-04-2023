import 'package:flutter/material.dart';
import 'package:shopping_duplicate/utils/CustomBorder.dart';
import 'package:shopping_duplicate/utils/CustomTextStyle.dart';
import 'package:shopping_duplicate/utils/CustomUtils.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image(
                  image: AssetImage("images/ic_logo.png"),
                  color: Colors.blue,
                  height: 140,
                  alignment: Alignment.center,
                  width: 200),
              flex: 50,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                            border: CustomBorder.enabledBorder,
                            labelText: "Name",
                            focusedBorder: CustomBorder.focusBorder,
                            errorBorder: CustomBorder.errorBorder,
                            enabledBorder: CustomBorder.enabledBorder,
                            labelStyle: CustomTextStyle.textFormFieldRegular
                                .copyWith(fontSize: MediaQuery.of(context).textScaleFactor * 16, color: Colors.black)),
                        keyboardType: TextInputType.text),
                    Utils.getSizedBox(height: 20),
                    TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                            border: CustomBorder.enabledBorder,
                            labelText: "Mobile Number",
                            focusedBorder: CustomBorder.focusBorder,
                            errorBorder: CustomBorder.errorBorder,
                            enabledBorder: CustomBorder.enabledBorder,
                            labelStyle: CustomTextStyle.textFormFieldRegular
                                .copyWith(fontSize: MediaQuery.of(context).textScaleFactor * 16, color: Colors.black)),
                        keyboardType: TextInputType.number),
                    Utils.getSizedBox(height: 20),
                    TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                            border: CustomBorder.enabledBorder,
                            labelText: "Email",
                            focusedBorder: CustomBorder.focusBorder,
                            errorBorder: CustomBorder.errorBorder,
                            enabledBorder: CustomBorder.enabledBorder,
                            labelStyle: CustomTextStyle.textFormFieldRegular
                                .copyWith(fontSize: MediaQuery.of(context).textScaleFactor * 16, color: Colors.black)),
                        keyboardType: TextInputType.emailAddress),
                    Utils.getSizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                          border: CustomBorder.enabledBorder,
                          labelText: "Password",
                          focusedBorder: CustomBorder.focusBorder,
                          errorBorder: CustomBorder.errorBorder,
                          enabledBorder: CustomBorder.enabledBorder,
                          labelStyle: CustomTextStyle.textFormFieldRegular
                              .copyWith(fontSize: MediaQuery.of(context).textScaleFactor * 16, color: Colors.black)),
                      obscureText: true,
                    ),
                    Utils.getSizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.blue,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                        textStyle: TextStyle(color: Colors.white,)),

                        onPressed: () {},
                        child: Text(
                          "SIGNUP",
                          style: CustomTextStyle.textFormFieldRegular.copyWith(color: Colors.white, fontSize: 14),
                        ),


                      ),
                    ),
                  ],
                ),
              ),
              flex: 50,
            )
          ],
        ),
      ),
    );
  }
}
