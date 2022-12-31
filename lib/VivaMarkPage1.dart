import 'package:flutter/material.dart';
import 'package:viva_app/VivaMarkPage2.dart';

class VivaMarkPage1 extends StatefulWidget {
  const VivaMarkPage1({Key? key}) : super(key: key);

  @override
  State<VivaMarkPage1> createState() => _VivaMarkPage1State();
}

class _VivaMarkPage1State extends State<VivaMarkPage1> {
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
                    'Fill in the following information:',
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
                      child: Text('Project Name:',
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
                            hintText: 'Type a text..',
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
                      child: Text('Year:',
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
                            hintText: 'ex: 2022 - 2023',
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
                      child: Text('First Student Full Name:',
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
                            hintText: 'Type a text..',
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
                      child: Text('Second Student Full Name (optional):',
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
                            hintText: 'Type a text..',
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
                      child: Text('Third Student Full Name (optional):',
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
                            hintText: 'Type a text..',
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
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 30, top: 10),
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VivaMarkPage2()));
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
                            width: 100,
                            child: Text('Next',style: TextStyle(
                                fontFamily: 'MontaguSlab',
                                fontSize: 21,
                                color: Colors.white
                            ),),
                          )
                      ),
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