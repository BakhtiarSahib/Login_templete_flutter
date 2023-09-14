import 'package:flutter/material.dart';
import 'package:login/login.dart';
class MyRegister extends StatefulWidget {
  const MyRegister({super.key});
  @override
  State<MyRegister> createState() => _MyRegisterState();
}
class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register.png'),fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Text("Create\nAccount",style: TextStyle(
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
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                 SizedBox(height: 20,),
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
                    
                    ),
              SizedBox(
                height: 10,
                ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        }, child: Text("Sign In",style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white,
                        decoration: TextDecoration.underline,
                        ),
                        
                        ),
                            ),
                            //forgot pass
                        TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.w900,color: Colors.white,
                        decoration: TextDecoration.underline,
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
  
    ;
  }
}