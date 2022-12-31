// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, constant_identifier_names, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:second_app/EditProfile.dart';
import 'package:second_app/login.dart';
import 'VivaMarkPage1.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final name ='User64563';
    final userImg ='userimg.png';
    return Scaffold( 
      appBar: AppBar(
        toolbarHeight:100,
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Color(0x60A663CC),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Stack(
              
                    fit: StackFit.loose,
                    children:[
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        height:70,
                        width:70,
                        decoration:BoxDecoration(
                            image: DecorationImage( image: AssetImage('userImg.png'),fit:BoxFit.cover)
                        ),


                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45,top: 48),
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFF42CF83)
                        ),
                      )
                    ]
                )
          ,)
          ],
      ),
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0x60A663CC),
              // ignore: prefer_const_constructors
              Color(0xEEF5F5F5),
              Color(0x203D3DDA),

            ],
          ),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage('home.png'),),

            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ Column(

                    children: [
                      OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                              backgroundColor: Color(0xCCB298DC),
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child:SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                  height: 33,
                                  width: 33,
                                  image: AssetImage('markIcon.png'),
                                ),
                                SizedBox(width: 5,),
                                Text('Fill Your Marks',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'MontaguSlab',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF6F2DBD)
                                  ),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_forward_ios_rounded,size: 20,
                                  color: Color(0xFF6F2DBD),
                                )
                              ],
                            ),
                          )

                      ),
                      SizedBox(height: 10),
                      OutlinedButton(onPressed: (){
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VivaMarkPage1()));
                        });
                      },
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                              backgroundColor: Color(0xCCB298DC),
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child:SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                  height: 31,
                                  width: 31,
                                  image: AssetImage('graduateIcon.png'),
                                ),
                                SizedBox(width: 19,),
                                Text('Viva Project',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'MontaguSlab',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF6F2DBD)
                                  ),),
                                SizedBox(width: 19,),
                                Icon(Icons.arrow_forward_ios_rounded,size: 20,
                                  color: Color(0xFF6F2DBD),
                                )
                              ],
                            ),
                          )

                      ),
                      SizedBox(height: 10),
                      OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                              backgroundColor: Color(0xCCB298DC),
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child:SingleChildScrollView(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                        children:[
                                          Image(
                                            height: 8.5,
                                            width: 8.5,
                                            image: AssetImage('purpleshape1.png'),
                                          ),
                                          Image(
                                            height: 8.5,
                                            width: 8.5,
                                            image: AssetImage('purpleshape1.png'),
                                          ),
                                          Image(
                                            height: 8.5,
                                            width: 8.5,
                                            image: AssetImage('purpleshape1.png'),
                                          )
                                        ]
                                    ),
                                    SizedBox(width: 1,),
                                    Column(
                                        children:[
                                          Image(
                                            height: 8.5,
                                            width: 19,
                                            image: AssetImage('purpleshape2.png'),
                                          )
                                          ,SizedBox(height: 1.5),
                                          Image(
                                            height: 8.5,
                                            width: 19,
                                            image: AssetImage('purpleshape2.png'),
                                          ),
                                          SizedBox(height: 1.5,),
                                          Image(
                                            height: 8.5,
                                            width: 19,
                                            image: AssetImage('purpleshape2.png'),
                                          )
                                        ]
                                    )
                          
                          
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Text('See All Projects',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'MontaguSlab',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF6F2DBD)
                                  ),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_forward_ios_rounded,size: 20,
                                  color: Color(0xFF6F2DBD),
                                )
                              ],
                            ),
                          )
                      )],
                  ),
                  ]
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
          child:Container(
          child: ListView(
                children:<Widget>[
                  MyDrawerHeader(
                    userImg: userImg,
                    name: name,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'My Profile',
                    icon: Icons.account_box_outlined,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Home Page',
                    icon: Icons.home_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'All Projects',
                    icon: Icons.list_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  
                  const SizedBox(height: 16),
                  Divider(
                  color: Colors.grey[600]
                  ),
                
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Log Out',
                    icon: Icons.logout_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Delete Account',
                    icon: Icons.delete_forever_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                ],
              ),
          
          
        ) ,
        
      ),

    );
  }

  Widget MyDrawerHeader({
    required String userImg,
    required String name,
   })=> InkWell(
     child:Container(
      color: Colors.purple,
      height: 200,
      padding: EdgeInsets.only(top: 60.0),
      child: Column(
        children: [ 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ CircleAvatar(radius: 40, backgroundImage:AssetImage('userimg.png'),backgroundColor: Colors.transparent),]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
             style: TextStyle(
             color: Colors.white,
             fontSize:25),
              ),
            ],
          ),
        ],
      ),
      ),
   );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }){
    const color = Colors.black;
  return ListTile(
    leading: Icon(icon, color: color, size: 35),
    title: Text(text, style: TextStyle(color: color, fontSize:20)),
    onTap: onClicked,
  );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index){
      case 0:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile(),));
      break;
      case 1:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
      break;
      case 2:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
      break;
      case 3:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));
      break;
      case 4:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
      break;

    }

  }

}



