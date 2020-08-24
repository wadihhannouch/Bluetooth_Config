import 'package:ble/utils/FormValidatorr.dart';
import 'package:ble/values/const.dart';
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Padding(
                      //Add padding around textfield
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
//                        controller: _textFieldController,
                        decoration: InputDecoration(
                          //Add th Hint text here.
                          hintText: "A Rounded TextField",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      initialValue: "",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextField(
                      keyboardType : TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          labelText: 'Password'
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25.0,top: 25.0),
                      width: double.infinity,
                      child: Form(
                        child: RaisedButton(
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
                    )


                  ]
              )
          )
      )
  );

}