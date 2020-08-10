import './api.dart';
import 'package:Courier_Connect_Limited/home.dart';
import 'package:flutter/material.dart';
import './sidebar.dart';

class Track extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TrackState();
  }
}

// onWillPop: () async => false,
class TrackState extends State<Track> {
  bool isFetched =false;

  final trackController = TextEditingController();
  var message;
  var mycolor;
  

  @override
  void dispose(){
    trackController.dispose();
    super.dispose();
  }
  
  
   int _currentindex = 2;

   var sfrom = 'koko ';
    var towhere = 'koo';
    var stat= 'koo';
    var trac="";
  @override
  Widget build(BuildContext context) {


    if(isFetched){

      if(stat=="Shipped"){
        mycolor = Colors.green;
      }
      else{
        mycolor = Colors.yellow;
      }
       
    }
    else{
      mycolor = Colors.red;
    }
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,

        title: Row(
          children: <Widget>[
            Container(
              // child: Image.asset('assets/images/track.png'),
              width: 40,
              height: 40,
              padding: EdgeInsetsDirectional.only(top: 10),
              //  margin: EdgeInsets.only(right: -20,),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/track.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Track item"),
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
        child: Container(
          child: Column(
            children: <Widget>[
              // Expanded(
              //   flex: 1,
              //   child: Text(""),
              // ),
              Expanded(
                flex: 10,
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            
                            child:
                              Theme(

                                data: new ThemeData(
                                  primaryColor: Colors.blue,
                                  primaryColorDark: Colors.blue,
                                ),


                                child:  TextField(
                                  controller: trackController,
                                  
                                // obscureText: true,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  
                                  // border: OutlineInputBorder(),
                                  // labelText: '   Enter Tracking Number....',
                                  hintText: '      Enter Tracking Number',
                                  // fillColor: Colors.amberAccent,
                                  
                                ),

                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              ),
                           
                            width: 270,
                            height: 45,
                            
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue,),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                          ),
                          // Text(isFetched?message:"",style: TextStyle(fontSize: 20,color: Colors.green,),),
                          // Text(sfrom,style: TextStyle(fontSize: 20,color: Colors.green,),),

                          // message,
                          SizedBox(height: 10,),
                          Container(
                            height: 50,
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              elevation: 15,
                              color: Colors.blue,
                              child: FlatButton.icon(
                                textColor: Colors.white,
                                // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                color: Colors.blue,
                                onPressed: () async{


                                  var trackid =trackController.text;
                                    message ="Please wait";

                                  // var no = "hello";

                                  var rsp = await tracking(trackid);
                                  print(rsp);
                                  setState(() {
                                    message ="Please wait";
                                  });
                                  if(rsp=="enter Tracking number"){
                                    
                                    setState(() {
                                        isFetched =false;
                                      
                                      message ="tracking id cannot be empty";
                                    });
                                    print(message);
                                    
                                  }
                                  else if(rsp=="Wrong"){
                                    setState(() {
                                        isFetched =false;
                                      message =" you entered wrong details";
                                    });
                                    print(message);
                                  }
                                  else{
                                    setState(() {
                                      isFetched =true;
                                      message="Tracking successful";
                                      trac=rsp[0]['trackid'];
                                      sfrom =rsp[0]['sfrom'];
                                      towhere =rsp[0]['sto'];
                                      stat = rsp[0]['status'];
                                    });
                                    print(message); 
                                    print(rsp[0]['status']);
                                  }
                                final snackBar = SnackBar(
                                content: Text('Yay! A SnackBar!'),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {
                                    // Some code to undo the change.
                                  },
                                ),
                              );

                              // Find the Scaffold in the widget tree and use
                              // it to show a SnackBar.
                             

                                },
                                icon: Icon(Icons.location_on, size: 18),
                                label: Text("Track"),
                                
                              ),
                            ),
                          ),
                          // Container(
                          //   child: RaisedButton(
                          //     child: Row(
                          //       children: [
                          //         Icon(
                          //           Icons.location_on,
                          //           size: 24,
                          //         ),
                          //         Text("Track"),
                          //       ],
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceAround,
                          //     ),
                          //     onPressed: () {},
                          //   ),
                          //   width: 100,
                          //   height: 35,
                          //   margin: EdgeInsets.only(
                          //     top: 20,
                          //   ),
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.all(Radius.circular(20)),
                          //     color: Colors.white,
                          //   ),
                          // ),

                          Container(
                            width: 300,
                            margin: EdgeInsets.only(top: 30),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.blue,
                              elevation: 15,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                   ListTile(
                                    leading: Icon(Icons.credit_card, size: 25,color: Colors.white,),

                                    title: Text(isFetched? "Tracking # :  $trac ":"Tracking # :" ,
                                        style: TextStyle(color: Colors.white)),
                                  ),


                                  ListTile(
                                    leading: Icon(Icons.arrow_forward, size: 25,color: Colors.white,),

                                    title: Text(isFetched? "Shipping from  $sfrom ":"Shipping from :" ,
                                        style: TextStyle(color: Colors.white)),
                                  ),

                                   ListTile(
                                    leading: Icon(Icons.arrow_back, size: 25,color: Colors.white,),

                                    title: Text(isFetched? "Shipping to  $towhere ":"Shipping to :",
                                        style: TextStyle(color: Colors.white)),
                                  ),

                                   ListTile(
                                    leading: Icon(Icons.album, size: 25,color: mycolor,),

                                    title: Text(isFetched? "Status : $stat ":"Status :",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  // ButtonTheme.bar(
                                  //   child: ButtonBar(
                                  //     children: <Widget>[
                                  //       FlatButton(
                                  //         child: const Text('Edit',
                                  //             style: TextStyle(
                                  //                 color: Colors.white)),
                                  //         onPressed: () {},
                                  //       ),
                                  //       FlatButton(
                                  //         child: const Text('Delete',
                                  //             style: TextStyle(
                                  //                 color: Colors.white)),
                                  //         onPressed: () {},
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        // selectedItemColor: Colors.pink,
        
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

          if (_currentindex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Home();
              }),
            );
          }
        },
      ),
    );
  }
}
