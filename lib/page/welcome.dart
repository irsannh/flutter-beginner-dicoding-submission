import 'package:dicoding_submission_app_irsan/page/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(bottom: bottom + 16),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 246,),
                  Image.asset('images/logo.jpg', width: 221, height: 106,),
                  const SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Write Your Name Here',
                        hintStyle: TextStyle(
                            color: Color(0xffD3D3D3), fontFamily: 'PlusJakartaSans', fontSize: 14, fontWeight: FontWeight.w600
                        ),
                        labelText: 'Your Name',
                        labelStyle: TextStyle(
                          color: Color(0xff003152), fontFamily: 'PlusJakartaSans', fontSize: 12, fontWeight: FontWeight.w600
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0
                          )
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff003152),
                            width: 2.0
                          )
                        )
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _name = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24,),
                  SizedBox(
                    height: 52, width: 335,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(name: _name)));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xff003152)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                            )
                          )
                        ),
                        child: const Text('Sign In', style: TextStyle(
                          color: Colors.white, fontFamily: 'PlusJakartaSans', fontSize: 24, fontWeight: FontWeight.w900
                        ),)
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
