import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  // String _email;
  // String _password;

  void signIn() {
    final form = _formKey.currentState;
    if(form!.validate()){
      print("Information is correct!");
    } else {
      print("Information isn't correct!");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      style: Theme.of(context).textTheme.labelSmall,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.black54,),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                          gapPadding: 2
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),
                            ),
                        ),
                        hintText: "email...",
                        hintStyle: TextStyle(fontSize: 11),
                        contentPadding: EdgeInsets.only(top: 0),
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return "Enter email";
                        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}')
                            .hasMatch(value)) {
                          return "Enter a valid email.";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      style: Theme.of(context).textTheme.labelSmall,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.key, color: Colors.black54,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),
                            ),
                            gapPadding: 2
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                        ),
                        hintText: "password...",
                        hintStyle: TextStyle(fontSize: 11),
                        contentPadding: EdgeInsets.only(top: 15, right: 8.0),
                        suffixText: ("reset password"),

                      ),
                      obscureText: true,
                      validator: (value) {
                        RegExp regex = RegExp(r'^.{6,}$');
                        if (value!.isEmpty){
                          return "Enter password";
                        } else if (!regex.hasMatch(value)){
                          return ("Enter a valid password(Min. 6 characters)");
                        }
                      },
                    )
                  ],
                ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    "Don't have an account?",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            ElevatedButton(
              onPressed: signIn,
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(
                      horizontal: Theme.of(context).buttonTheme.minWidth,
                        vertical: Theme.of(context).buttonTheme.height,
                    ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(37, 195, 74, 1),
                ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
              ),
              child: Text(
                "Sign In",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
