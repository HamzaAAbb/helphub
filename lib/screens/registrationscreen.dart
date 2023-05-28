import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './/utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final _auth = FirebaseAuth.instance;


  bool _passwordNotvisible = true;
  bool _warningMessageIsVisible = false;
  String email = '';
  String password = '';

  bool passwordIsGood(){
    return (password.length > 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                      child: Text(
                        'Entrez vos données',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              email = value;
                            });
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              CupertinoIcons.mail,
                              color: kLightGreyColor,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: kLightGreyColor),

                            /// to check
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 3,
                                color: kLightGreyColor,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 3,
                                color: kLightGreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 9),
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              password = value;
                            });
                          },
                          obscureText: _passwordNotvisible,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.key,
                              color: kLightGreyColor,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _passwordNotvisible = !_passwordNotvisible;
                                });
                              },
                              child: Icon(
                                (_passwordNotvisible)
                                    ? CupertinoIcons.eye_slash_fill
                                    : CupertinoIcons.eye_fill,
                                color: kLightGreyColor,
                                size: 20,
                              ),
                            ),
                            labelText: 'Mot de passe',
                            labelStyle: const TextStyle(color: kLightGreyColor),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 3,
                                color: kLightGreyColor,
                              ),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 3,
                                color: kLightGreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 28),
                    Visibility(
                      visible: _warningMessageIsVisible,
                        child: const Text(
                      'Votre mot de passe doit contenire au moins 6 charactères',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 9),
                        child: GestureDetector(
                          onTap: () async{
                            if (passwordIsGood()){
                              try {
                                final _user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                if (_user != null) {
                                  //..
                                  Navigator.pushNamed(context, '/mainpage');
                                }
                              }
                              catch (e){

                              }
                            } else {
                              setState(() {
                                _warningMessageIsVisible = true;
                              });

                            }

                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: kBlueColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Text(
                                'Créer un compte',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: const Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
