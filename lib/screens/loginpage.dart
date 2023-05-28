import 'package:flutter/material.dart';
import './/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
//...................
///page d'acueil pour les volonaties  suggestion des evenements
///les details d'un evenement
///l'evaluation de l'organisateur

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _auth = FirebaseAuth.instance;


  String email = '';
  String password = '';
  bool _passwordNotvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF7F7F7),
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 3,
                  child: Image(
                    image: AssetImage('images/Pasted image.png'),
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                )
              ],
            ),
            /*
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  child: Text(
                    'Se connecter',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            */
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                    child: TextField(
                      onChanged: (value) {
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
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            width: 3,
                            color: kLightGreyColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
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
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            width: 3,
                            color: kLightGreyColor,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                    child: GestureDetector(
                      onTap: () async{

                        try{
                          final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                          if (user != null){
                            Navigator.pushNamed(context, '/mainpage');
                          }
                        }
                        catch (e){
                          //print(e);
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
                            'Se Connecter',
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
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Mot de passe oublié ?',
                  style: TextStyle(
                    color: kBlueColor,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(
                        color: kLightGreyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'OU',
                      style: TextStyle(color: kLightGreyColor, fontSize: 15),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(
                        color: kLightGreyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: const Color(0xFFE74C3C), width: 3),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                            flex: 2,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image:
                                      AssetImage('images/image_hackaton3.png'),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 7,
                            child: Center(
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                    color: Color(0xFFE74C3C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: const Color(0xFF3498DB), width: 3),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                            flex: 2,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Image(
                                  image:
                                      AssetImage('images/image_hackaton4.png'),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 7,
                            child: Center(
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                    color: Color(0xFF3498DB),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Vous n\'avez pas de compte?',
                  style: TextStyle(
                    color: kBlueColor,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/registrationpage');
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
      ),
    );
  }
}
