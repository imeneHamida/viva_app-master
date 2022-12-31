// ignore_for_file: file_names, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'ForgotPassword2.dart';



class forgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF120D3A),
        body:Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x60120D3A),
                Color(0x603D3DDA),
                Color(0x90A663CC),
              ],
            ),),
          child: Container(
            height: 460,
            width: 320,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(image: AssetImage('Background4.png')),
                Container(
                    margin: EdgeInsets.only(top: 35),
                    alignment: Alignment.topCenter,
                    child:Text(
                      "Forgot My Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'MonguSlab',
                          fontWeight: FontWeight.w700
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(top:55,right: 12),
                    alignment: Alignment.topCenter,
                    child: Image(image: AssetImage('forgotpassword.png'),)),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left:40,top:150),
                  child: Text('Enter Your Email',style: TextStyle(
                    fontFamily: 'MontaguSlab',
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top:220,right:15),
                  padding: EdgeInsets.only(left: 40,right: 40),
                  height: 43,
                  child: TextFormField(
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                        color: Colors.white,
                    ),
                    onChanged: (value){
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF120D3A),width:2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    
                   prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xffffffff),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontSize: 17,
                        ),),
                  ),
                 
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(right: 20,bottom: 50),
                  child: OutlinedButton(
                    onPressed:(){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPassword2()));
                    },
                    style: OutlinedButton.styleFrom(
                        
                        padding: EdgeInsets.only(top: 16,bottom: 16,left: 14,right: 14),
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(50)
                        ),
                        side: BorderSide(
                            color: Color(0xFF120D3A)
                        )


                    ),
                    child: Text(
                      "Receive Code",style:TextStyle(
                      fontFamily: 'MontaguSlab',
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,

                    ),
                    ),
                  ),
                ),



              ],
            ),
          ),
        )
    );
  }
}
