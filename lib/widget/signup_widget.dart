
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:note_pad_flutter/style/app_style.dart';
import '../screen/login_screen.dart';
class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  String firstName="", lastName="",userName="", emailAddress="", password="", repassword="";
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height/3,
                    child: Image.asset("assets/images/logo.jpg"),
                  ),
                ),


                // First Name Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppStyle.mainColor,
                    ),
                    child: TextField(
                      controller: firstNameController,

                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(

                        hintText: "First Name",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        labelText: "First Name",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // Last Name Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppStyle.mainColor,
                    ),
                    child: TextField(
                      controller: lastNameController,

                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(

                        hintText: "Last Name",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        labelText: "Last Name",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // Email Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppStyle.mainColor,
                    ),
                    child: TextField(
                      controller: emailController,

                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(

                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // User Name Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppStyle.mainColor,
                    ),
                    child: TextField(
                      controller: userNameController,

                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(

                        hintText: "User Name",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        labelText: "User Name",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                // Password Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppStyle.mainColor,
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(

                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // Password Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppStyle.mainColor,
                    ),
                    child: TextField(
                      controller: rePasswordController,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(

                        hintText: "Retype Password",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        labelText: "Retype Password",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),



                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyle.mainColor,
                      ),

                      onPressed: (){
                        print("Signin Button Worked");
                        signInWithEmailAndPassword();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            fontSize: 20,

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppStyle.mainColor,
                        ),

                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,

                            ),
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signInWithEmailAndPassword() async {
    firstName = firstNameController.text.toString();
    lastName = lastNameController.text.toString();
    userName = userNameController.text.toString();
    emailAddress = emailController.text.toString();
    password = passwordController.text.toString();
    repassword = rePasswordController.text.toString();
    print(emailAddress);
    print(password);
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}


