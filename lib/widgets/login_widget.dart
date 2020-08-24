import 'package:blue_config/utils/FormValidatorr.dart';
import 'package:blue_config/utils/delayedanimation.dart';
import 'package:blue_config/values/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();
Widget login_widget(context){
  return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50)),
        boxShadow: [
          BoxShadow(
            color: Constants.shadowBG,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
          child:
          Form(
              key: _formKey,
              child:

              NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                    overscroll.disallowGlow();
                  },
                  child:
                  ListView(
                      children:[
                        DelayedAnimation(child:
                        Padding(
                          //Add padding around textfield
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(

//                        controller: _textFieldController,
                            decoration: InputDecoration(
                              focusColor: Theme.of(context).accentColor,
                              hintText: "Email",
                              focusedBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: Constants.lightAccent, width: 2.0),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ), delay: 500),
                        DelayedAnimation(child:
                        Padding(
                          //Add padding around textfield
                          padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 25.0),
                          child: TextField(
                            cursorColor: Theme.of(context).accentColor,
//                        controller: _textFieldController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              fillColor: Theme.of(context).accentColor,
                              focusedBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: Constants.lightAccent, width: 2.0),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ), delay: 600),
                        DelayedAnimation(child:
                        Container(
                          padding: EdgeInsets.only(top: 25.0),
                          width: double.infinity,
                          child:
                            FlatButton(
                              onPressed: () {
                              },
                              padding: EdgeInsets.all(15.0),

                              color: Colors.white,
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                        ),delay: 700),

                        DelayedAnimation(child:
                        Container(
                          padding: EdgeInsets.only(right: 25.0,top: 25.0),
                          width: double.infinity,
                          child: Form(
                            child:
                            RaisedButton(
                              elevation: 5.0,
                              onPressed: () {
//  validateAndSave();
                              },
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only( topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0)),
                              ),
                              color: Theme.of(context).accentColor,
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                          ),
                        ),delay: 800),

                        DelayedAnimation(child:
                        Container(
                          padding: EdgeInsets.only(right: 25.0,top: 25.0),
                          width: double.infinity,
                          child:
                            FlatButton(
                              onPressed: () {
//  validateAndSave();
                              },
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only( topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0)),
                              ),
                              child: Text(
                                'Skip login',
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                        ),delay: 900),
                      ]
                  )
              )
          )
      )
  );

}