import 'package:flutter/material.dart';
import 'package:task1/controllers/login_controller.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final phone = TextEditingController();
  final LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Login Screen'),
        ),
        body: LoginController.isLoading(false)
            ? Center(child: CircularProgressIndicator())
            : ListView(children: [
                new Column(
                  children: [
                    Form(
                        child: Column(
                      children: [
                        Container(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: TextFormField(
                            controller: phone,
                            keyboardType: TextInputType.phone,
                            decoration:
                                InputDecoration(labelText: 'Phone Number'),
                          ),
                        )),
                        Container(
                            margin: EdgeInsets.only(top: 40, bottom: 5),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: ElevatedButton(
                                  onPressed: () async {
                                    loginController.verifyPhone(phone.text);
                                    Get.to(OtpScreen());
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 15.0,
                                      ),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                              child: Text(
                                            "Sign In",
                                            textAlign: TextAlign.center,
                                          )),
                                        ],
                                      )),
                                ))),
                      ],
                    ))
                  ],
                )
              ]));
  }
}
