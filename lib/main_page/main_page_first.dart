
import 'package:flutter/material.dart';
import 'package:store_ui/main_page/buttomnavigator_page.dart';

import '../utils/appColor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSwitch = false;
  late TextEditingController userNameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();


  final _formkey = GlobalKey<FormState>();
  bool isValidate = false;

bool isPasswordValidate=false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: AppBar(
          leading: const CircleAvatar(
            backgroundColor: AppColor.C_F5F6FA,
            radius: 20,
            child: Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: Colors.white,
          elevation: double.infinity,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColor.C_1D1E20),
                ),
              ),
              const Center(
                child: Text(
                  'Please enter your data to continue',
                  style: TextStyle(
                      color: AppColor.C_8F959E,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ma'lumotni to'ldiring";
                    }
                  },
                  controller: userNameController,
                  decoration: InputDecoration(
                    suffixIcon: isValidate ? Icon(Icons.check) : null,
                    labelText: 'Username',
                  ),
                  onChanged: (value){
                    if(value.length>7){
                      setState(() {

                        isValidate=true;
                      });
                    } else {
                      setState(() {
                        isValidate = false;
                      });
                    }
                  } ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Parolni kiriting';
                    }
                  },
                  onChanged: (value) {
                    if(value.length>8){
                      setState(() {
                        isPasswordValidate=true;
                      });
                    }
                    else{
                      setState(() {
                        isPasswordValidate;
                      });
                    }
                  },
                  controller: passwordController,
                  //passwordController
                  obscureText: false,
                  // initialValue: 'HJ@#9783kja',
                  decoration:  InputDecoration(
                    suffixIcon: isPasswordValidate? Icon(Icons.password_sharp) : null,
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColor.C_EA4335,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Remember me',
                          style: TextStyle(
                              color: AppColor.C_1D1E20,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        )),
                    Switch(
                        value: isSwitch,
                        onChanged: (value) {
                          setState(() {
                            isSwitch = value;
                          });
                        }),
                  ],
                ),
              ),
              const SizedBox(
                height: 108,
              ),
              const Center(
                  child: Text(
                      "By connecting your account confirm that you agree \nwith our Term and Condition")),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height:130,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        if (userNameController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ButtomNagPage();
                              },
                              settings: RouteSettings(arguments: {
                                'name': userNameController.text,
                                'password': passwordController.text,
                              }),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Ma'liumot to'liq emas",
                                style: TextStyle(fontSize: 20),
                              ),
                              duration: Duration(seconds: 5),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: AppColor.C_9775FA,
                    ),
                    child: const Center(child: Text('Login',style: TextStyle(fontSize: 20),))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

