import 'package:flutter/material.dart';
import 'package:viva_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome1 extends StatelessWidget {
  getUserInfo() async{
    SharedPreferences info = await SharedPreferences.getInstance();
    info.setInt('logged in', 2);
  }
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF120D3A),
        body:PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
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
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 50),
                      child:Image(image: AssetImage('Background1.png'),height:383,width: 224,)
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 100),
                      child: Image(image: AssetImage('Welcome1.png'),height: 280.05,width: 256,)),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 170,),
                      child: Image(image: AssetImage('3dots1.png'),height:9,width: 39,)),
                  Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top:50),
                      child: Image(image: AssetImage('Background1_2.png'),height: 345,width: 50,)),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 320),
                    child: Text(
                      'Fast Calculate!',style:TextStyle(
                        fontFamily: 'MontaguSlab',
                        fontSize: 31,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF6F2DBD)

                    ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 132),
                    child: Icon(Icons.arrow_forward_ios_rounded,size: 50,
                      color: Color(0xFFFFC727),),

                  ),






                ],
              ),
            ),
            Container(
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
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 50),


                      child:Image(image: AssetImage('Background2.png'),height:383,width: 224,)
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 100),
                      child: Image(image: AssetImage('Welcome2.png'),height: 280.05,width: 256,)),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Image(image: AssetImage('Background2_2.png'),height: 383,width: 50)),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 170,),
                      child: Image(image: AssetImage('3dots2.png'),height:9,width: 39,)),

                  Container(
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.centerRight,
                      child: Image(image: AssetImage('Background2_3.png'),height: 345,width: 50,)),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 320),
                    child: Text(
                      'Organized!',style:TextStyle(
                      fontFamily: 'MontaguSlab',
                      fontSize: 31,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6F2DBD),

                    ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 132),
                    child: Icon(Icons.arrow_back_ios_new_rounded,size: 50,
                      color: Color(0xFFFFC727),),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 132),
                    child: Icon(Icons.arrow_forward_ios_rounded,size: 50,
                      color: Color(0xFFFFC727),),
                  ),
                ],
              ),
            ),
            Container(
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
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 50),
                      child:Image(image: AssetImage('Background3.png'),height:383,width: 224,)
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 100),
                      child: Image(image: AssetImage('Welcome3.png'),height: 280.05,width: 256,)),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Image(image: AssetImage('Background3_2.png'),height: 383,width:50,)),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 170,),
                      child: Image(image: AssetImage('3dots3.png'),height:9,width: 39,)),


                  Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 120),
                      child: ElevatedButton(
                        onPressed:(){

                          Navigator.push(context
                              , MaterialPageRoute(builder: (context)=>Login()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFC727),
                            padding: EdgeInsets.only(top: 25,bottom: 25,left: 20,right: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            )

                        ),
                        child: Text(
                          "Let's Get Started!",style:TextStyle(
                          fontFamily: 'MontaguSlab',
                          fontSize: 29,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF6F2DBD),

                        ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}