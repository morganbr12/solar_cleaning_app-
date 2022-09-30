import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.07,
                padding: const EdgeInsets.only(top: 3),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor, width: 1.5,),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.black54,),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15),
                      hintText: "Full name",
                    hintStyle: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: size.height * 0.07,
                padding: const EdgeInsets.only(top: 3),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor, width: 1.5,),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.black54,),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15),
                      hintText: "email...",
                    hintStyle: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: size.height * 0.07,
                padding: const EdgeInsets.only(top: 3),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor, width: 1.5,),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key, color: Colors.black54,),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15),
                      hintText: "password...",
                    hintStyle: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: size.height * 0.07,
                padding: const EdgeInsets.only(top: 3),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key, color: Colors.black54,),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15),
                      hintText: "repeat password",
                    hintStyle: TextStyle(fontSize: 11),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(
                      horizontal: Theme.of(context).buttonTheme.minWidth,
                      vertical: Theme.of(context).buttonTheme.height,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromRGBO(34, 195, 74, 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ),
                child: Text("Sign Up",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
