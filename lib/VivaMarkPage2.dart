import 'package:flutter/material.dart';
import 'package:viva_app/Result.dart';

import 'VivaMarkPage1.dart';

class VivaMarkPage2 extends StatefulWidget {
  const VivaMarkPage2({Key? key}) : super(key: key);

  @override
  State<VivaMarkPage2> createState() => _VivaMarkPage2State();
}

class _VivaMarkPage2State extends State<VivaMarkPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xDDA663CC),
        toolbarHeight: 71,
        title: Text('Viva Project',style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'MontaguSlab',
            fontWeight: FontWeight.w200
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            stops: [
              0.5,
              0.9,
            ],
            colors: [
              Color(0xFFF5F5F5),
              Color(0x20B8D0EB),
            ],
          ),),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Fill in the following Marks:',
                    style: TextStyle(
                        color: Color(0xFF6F2DBD),
                        fontFamily: 'MontaguSlab',
                        fontSize: 14
                    ),),
                ),
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40.0, top: 7.0),
                      child: Text("First Teacher's Mark: ",
                        style: TextStyle(
                            color: Color(0xFF120D3A),
                            fontFamily: 'MontaguSlab',
                            fontSize: 12
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Type a number..',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF120D3A), width: 22.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF120D3A), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        ),
                        onChanged: (value) {
                          //Do something with this value
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40.0, top: 7.0),
                      child: Text("Second Teacher's Mark: ",
                        style: TextStyle(
                            color: Color(0xFF120D3A),
                            fontFamily: 'MontaguSlab',
                            fontSize: 12
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Type a number..',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF120D3A), width: 22.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF120D3A), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        ),
                        onChanged: (value) {
                          //Do something with this value
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40.0, top: 7.0),
                      child: Text("Third Teacher's Mark: ",
                        style: TextStyle(
                            color: Color(0xFF120D3A),
                            fontFamily: 'MontaguSlab',
                            fontSize: 12
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Type a number..',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF120D3A), width: 22.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF120D3A), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        ),
                        onChanged: (value) {
                          //Do something with this value
                        },
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          alignment: Alignment.bottomLeft,
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VivaMarkPage1()));
                            });
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF5F5F5),
                                padding:EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10) ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                side: BorderSide(color: Color(0xFF6F2DBD))
                            ),
                            child:Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 80,
                              child: Text('Back',style: TextStyle(
                                  fontFamily: 'MontaguSlab',
                                  fontSize: 21,
                                  color: Color(0xFF6F2DBD)
                              ),),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>ResultPage()));
                            });
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFA663CC),
                                padding:EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10) ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                side: BorderSide(color: Color(0xFFA663CC))
                            ),
                            child:Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 150,
                              child: Text('Calculate',style: TextStyle(
                                  fontFamily: 'MontaguSlab',
                                  fontSize: 21,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}