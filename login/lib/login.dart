import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Text("Welcome\nBack",style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  
                  
                ),),
              ),
            ),//first container done 

            //2nd container

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.5,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      obscureText: true,    //password er time a ...... uthbe 
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In",style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.w700
                        ),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor:Colors.grey.shade800 ,
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.arrow_forward), 
                            onPressed: () {  },
                            ),
                        ),
                      ],
                    ),
              SizedBox(height: 10,),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: Text("Sign Up",style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w900,color: Colors.grey.shade800,
                        decoration: TextDecoration.underline,
                        ),
                        
                        ),
                            ),
                            //forgot pass
                        TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.w900,color: Colors.grey.shade800,
                       // decoration: TextDecoration.underline,
                        ),
                        
                        ),
                            )



                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}