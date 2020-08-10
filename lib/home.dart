import 'package:flutter/material.dart';
import './track.dart';
import './sidebar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

// onWillPop: () async => false,
class HomeState extends State<Home> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,

        title: Row(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/logo.png'),
              width: 50,
              height: 50,
              padding: EdgeInsetsDirectional.only(top: 10),
              //  margin: EdgeInsets.only(right: -20,),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                // image: DecorationImage(
                //   image: AssetImage('assets/images/logo.png'),
                // ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Courier Connectgh"),
            SizedBox(
              width: 1,
            ),
          ],
        ),
        // backgroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              // UserAccountsDrawerHeader(
              //   accountName: Text("Dollarstir"),
              //   accountEmail: Text("Dollarstir@gmail.com"),
              // ),
              Sidebar(),
            ],
          ),
        ),
      ),
      body: Container(
        child: Text(""),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        // iconSize: 10,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            title: Text("home",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
            
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.swap_vertical_circle,color: Colors.white,),
            title: Text("Ship",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,color: Colors.white,),
            title: Text("Track",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.group_work,  ),
          //   title: Text("Services"),
          // ),

          BottomNavigationBarItem(
            icon: Icon(Icons.call,color: Colors.white,),
            title: Text("Contact",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
            
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });

          if (_currentindex==2) {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Track();
            }),);
            
          }
        },
      ),
    );
  }
}
